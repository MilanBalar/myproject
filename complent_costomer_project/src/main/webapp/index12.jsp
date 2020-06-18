
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
	
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
	</head>
	

	<body>

		<div class="wrapper">
			<div class="inner">
				<form action="Servlet" method="post">
				    
				
					<h3>Sign up</h3>
					<label class="form-group">
						<input type="text" class="form-control" name="un"  required>
						<span>Your Name</span>
						<span class="border"></span>
					</label>
					<label class="form-group">
						<input type="text" class="form-control" name="um"  required>
						<span for="">Your Mail</span>
						<span class="border"></span>
					</label>
					<label class="form-group" >
					    <input type="password" class="form-control" name="up"  required>
						
						<span for="">Your Password</span>
						<span class="border"></span>
		
					</label>
					<button value="Register" name="action">Submit 
						<i class="zmdi zmdi-arrow-right"></i>
					</button>`
					<h2><b><a href="login.jsp">Login here....</a></b> </h2>
					
				</form>
			</div>
		</div>
		
</html>          



</body>
</html>
