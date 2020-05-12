<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html>

<head>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container py-5">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-6 offset-md-3">
						<span class="anchor" id="formLogin"></span>
							<% 
  	if((String)session.getAttribute("error") != null){ %>
					<h4 style="color: red">Invalid Email or Password. Please try again.</h4>
					<%} %>
						<!-- form card login with validation feedback -->
  <div class="card  text-white">
							<div class="card-header">
								<!-- h3 class="mb-0">Login</h3-->
								<img alt="" src="per.jpeg" width="150" height="50" style="text-align: center">
							</div>
							<div class="card-body">
								<form class="form" role="form" autocomplete="off" id="loginForm"
									novalidate="" action="LoginServlet" method="POST">
									
									<div class="form-group">
										<label  style=" color:black ">Username</label> 
										<input type="text"
											class="form-control" name="name" id="name" required="" placeholder="Enter user name">
										<div class="invalid-feedback">Please enter your username
											or email</div>
									</div>
									<div class="form-group">
										<label style=" color:black">Password</label>
										 <input type="password"
											class="form-control" id="pwd1" required="" name="password" placeholder="Enter password"
											autocomplete="new-password">
										<div class="invalid-feedback">Please enter a password</div>
									</div>

									<strong style="color: red">${msg}</strong>

									<button type="submit"
										class="btn btn-primary btn-lg " id="btnLogin">Connexion</button>
								</form>
							</div>
							<!--/card-body-->
						</div>
						<!-- /form card login -->
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>