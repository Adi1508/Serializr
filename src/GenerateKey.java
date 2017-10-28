import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

public class GenerateKey extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		String key = "";
		String url = "http://codeoffapi.herokuapp.com/api/v1/nsdjbjsbdsv/1/generate";

		String code = "";
		try {
			JSONObject json = null;
			try {
				json = new JSONObject(
						readUrl("http://codeoffapi.herokuapp.com/api/v1/nsdjbjsbdsv/1/generate"));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			code = (String) json.get("code");

		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(code);
		out.println("<html>");
		out.println("<body>");
		out.println("<h1 class='titl' style='font-size:50px; margin:auto; text-align:center; margin-top:50px'><span>Generated Key: "
				+ code + "</span></h1></body></html>");

		RequestDispatcher rd = req.getRequestDispatcher("software.jsp");
		rd.include(req, resp);
	}

	private static String readUrl(String urlString) throws Exception {
		BufferedReader reader = null;
		try {
			URL url = new URL(urlString);
			reader = new BufferedReader(new InputStreamReader(url.openStream()));
			StringBuffer buffer = new StringBuffer();
			int read;
			char[] chars = new char[1024];
			while ((read = reader.read(chars)) != -1)
				buffer.append(chars, 0, read);

			return buffer.toString();
		} finally {
			if (reader != null)
				reader.close();
		}
	}
}
