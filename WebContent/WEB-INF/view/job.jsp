<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="ISO-8859-1">
<title>job</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<jsp:include page="test.jsp"></jsp:include>
</head>
<body>
	<div class="container py-5">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-6 offset-md-3">
						<span class="anchor" id="formLogin"></span>
						<!-- form card login with validation feedback -->
			<nav class="col-md-3 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="ssasServlet">
                            <span data-feather="home"></span>
                            Cube <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ssisServlet">
                            <span data-feather="file"></span> Flux SSIS </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="JobServlet">
                            <span data-feather="shopping-cart"></span> Run Job</a>
                    </li>
					<br/><br/><br/><br/>
                </ul>                
            </div>
        </nav> 
  						<div class="card  text-white">
							<div class="card-header bg-dark">
								<h3 class="mb-0">run job</h3>
							</div>
							<div class="card-body">
								<form class="form" role="form" autocomplete="off" id="#" novalidate="" action="JobServlet" method="post">
									<div class="form-group">
										<label for="uname1">Server name</label>
										 <input type="text" class="form-control" name="server" id="server" required="" placeholder="Server name">
										<!--div class="invalid-feedback">Please enter your username or email</div-->
									</div>
									<div class="form-group">
										<label for="uname1">port</label>
										 <input type="text" class="form-control" name="port" id="port" required="" placeholder="Port number">
										<!--div class="invalid-feedback">Please enter your username or email</div-->
									</div>
									<div class="form-group">
										<label for="uname1">Job name</label>
										 <input type="text" class="form-control" name="jobname" id="jobname" required="" placeholder="Job name">
										<!--div class="invalid-feedback">Please enter your username or email</div-->
									</div>
									<div class="form-group">
										<label for="uname1">Username</label>
										<input type="text" class="form-control" name="username" id="username" required="" placeholder="User name">
										<!--div class="invalid-feedback">Please enter your username or email</div-->
									</div>
									<div class="form-group">
										<label>Password</label> 
										<input type="password" class="form-control" name="password" id="password"  required=""  placeholder="password"
											autocomplete="new-password">
										<!--div class="invalid-feedback">Please enter your username or email</div-->
									</div>
									<!--strong style="color: red">${msg}</strong-->
									<button type="submit" class="btn btn-primary btn-lg float-right" id="btnLogin"> 
										<span class="glyphicon glyphicon-play-circle "></span> run </button>
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