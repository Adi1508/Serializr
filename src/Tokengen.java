import java.io.IOException;
import java.io.PrintWriter;
import java.net.UnknownHostException;
import java.security.SecureRandom;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

public class Tokengen extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, UnknownHostException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		String uid = req.getParameter("username");
		String token = generateToken();
		Document data = new Document();
		data.put("username", uid);
		data.put("token", token);
		try {
			MongoClientURI uri = new MongoClientURI(
					"mongodb://user:pass@ds237735.mlab.com:37735/codeoff");
			MongoClient client = new MongoClient(uri);
			MongoDatabase db = client.getDatabase("codeoff");
			MongoCollection tokens = db.getCollection("tokencollection");
			tokens.insertOne(data);
		} catch (Exception e) {
			out.println(e);
		}
		resp.sendRedirect("/CodeOff/software.jsp");
		out.close();
	}

	public synchronized String generateToken() {
		SecureRandom random = new SecureRandom();
		long longToken = Math.abs(random.nextLong());
		String randomtok = Long.toString(longToken, 16);
		return (randomtok);
	}
}