<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<title>Software Verification</title>
<style>
	#head{
		text-align:center;
	 	font-family: Helvetica; 
	 	font-weight: bold;
	 	font-size:25px;
	}
	#sub-head{
		text-align:justify;
	 	font-family: Helvetica; 
	 	font-weight: bold;
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
</style>
</head>
<body>

	<div class="row" >
        <div class="col-md-2"></div>
        <div class="col-md-8" style="margin: 0px;">
            <h1 class="titl" style="font-size:100px;text-align:center;"><span>Serial</span><span style="color: gold;">izr</span></h1>
        </div>
        <div class="col-nd-2"></div>
    </div>
    <div class="row"  style="margin: 15px">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <form action="sof" method="post">
	    		<input type="submit" class="btn btn-default btn-lg btn-block" id="genkey" value="Generate Key"/></br>	
	    	</form>
	    	<hr style="width:1200px; border-width: 5px;">
    
		    <form action="val" method="post">
			    <input type="text" class="form-control" name="key" id="key" placeholder="Enter the key for Validation"></br>	
			   	<input type="submit" class="btn btn-default btn-lg btn-block" id="valkey" value="Validate Key"/></br>	
			</form>
	
        </div>
	</div>

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <!-- Latest compiled and minified Bootstrap -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</body>
</html>