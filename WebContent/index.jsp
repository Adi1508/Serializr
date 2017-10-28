<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Cookie' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>

<title>Token Generation</title>
<style>

html,body { 
  padding: 0;
  margin: 0;
  background: #FFFFFF;
}

.titl{
	font-family: 'Baloo', cursive;
}

.form-control:focus {
	 border-color: #1FA67A;
    box-shadow: 0 0 10px #1FA67A;

}

.input-group-addon{
	color: #ffffff;
    background: #1FA67A;
    border-color: #1FA67A;
}

.btn, .btn:focus, .btn:hover, .btn:active {
	color: #ffffff;
	height: 58px;
    font-size: 20px;
    background: #816085;
    border-color: #816085;
    outline: none;

}
/* while the button is pressed*/
.btn:active:focus, .btn.active:focus {
    outline: 0 none;
    background: #816085;
}

.sp {
	margin: 35px;
}



/* Footer */
.footer-modified {
	background-color: #816085;
	padding: 20px;
	width: 100%;
	text-align: center;
}
.company{
	color:  #816085;
	font-size: 14px;
	font-weight: 500;
	margin: 0;
}
.footer-icons{
	margin-top: 15px;
}
.footer-icons a{
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color:  #816085;
	border-radius: 2px;

	font-size: 20px;
	color: #ffffff;
	text-align: center;
	line-height: 35px;
	margin-right: 3px;
	margin-bottom: 5px;
}


h1 {
	font-family: 'Cookie', cursive;
	font-size: 200px;
	font-weight: 500;
	text-align: center;
	padding: 0px;
	margin-bottom: 20px;
	margin-top: 20px;
}


hr {
    margin: 0px;
    border-width: 3.5px;	
    border-style: solid;
    border-color: purple;
}


#url, #btn {
    font-size: 22px;
   
}

#disp{
	font-size: 15px;
  	margin: 2px;
  	font-family: 'Ubuntu', sans-serif;
}

#final {
	display: none;
	padding: 0px;
	margin: 0px;
	width: 100%;
	text-align: center;
}

#cpy {

	font-size: 14px;
	letter-spacing: 1px;
}

}

a, a:focus, a:hover, a:active {
	outline: 0;
	border-color: red;
	text-decoration: none;
}

.hideit{
	display: none;
}
	#head{
	 	font-size:25px;
	}
	#sub-head{
	 	font-size:25px;
	}
	#contacts p, 
    #contacts p.lead{
      margin: 0;
    }
    .modal-header:last-child{
      border-bottom: 0;
    }
    .authenticated{
      display: block;
      margin-top: 20px;
      margin-bottom: 10px;
    }
    .unauthenticated{
      display: none;
    }
    #over img {
	margin-left: auto;
	margin-right: auto;
	display: block;
	}
	#log{
    height:50px; 
    width:100px; 
    margin: -20px -50px; 
    position:relative;
    top:50%; 
    left:50%;
}
#head {
	text-align: center;
	font-family: Helvetica;
	font-weight: bold;
	font-size: 25px;
}

#sub-head {
	text-align: justify;
	font-family: Helvetica;
	font-weight: bold;
	font-size: 25px;
}

.authenticated {
	display: block;
	margin-top: 20px;
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<div class="container">
    <div class="row" >
        <div class="col-md-2"></div>
        <div id="over" class="col-md-8" style="margin: 0px; text-align:center">
            <!-- <h1 class="titl" style="font-size:100px;"><span>Serial</span><span style="color: gold;">izr</span></h1> -->
            <img src="serializr.png" alt="Serializr" width="304" height="300" style="text-align:center; margin:auto">
        </div>
        <div class="col-nd-2"></div>
    </div>
    <button type="button" id="log" class="btn btn-success" data-toggle="modal" data-target="#loginModal">Register</button><br><br><br>
    <hr/>
  </div>

  <form action="gen" method="post">
  <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="loginModalLabel">Register to generate Token</h4>
        </div>
        <div class="modal-body">
          <div class="form-group">
            <label for="recipient-name" class="control-label">UserId:</label>
            <input type="text" class="form-control" id="username" name="username">
          </div>
          <div class="form-group">
            <label for="message-text" class="control-label">Password:</label>
            <input type="password" class="form-control" id="userpass" name="userpass">
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary" id="doLogin">Generate Token</button>
        </div>
      </div>
    </div>
  </div>
  </form>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <!-- Latest compiled and minified Bootstrap -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</body>
</html>