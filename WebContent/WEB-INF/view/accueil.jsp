<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html>

<head>
<head>
<meta charset="ISO-8859-1">
<title>Accueil</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


</head>
<body>
<jsp:include page="test.jsp"></jsp:include>
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
								<h3 class="mb-0">Process Cube</h3>
							</div>
							<div class="card-body">
								<form class="form" role="form" autocomplete="off" id="#" novalidate="" action="#" method="#">
									<div class="form-group">
										<label for="uname1">server</label>
										 <input type="text"class="form-control" name="server" id="server" required="" placeholder="Server name">
										<!--  div class="invalid-feedback">Please enter your server</div-->
									</div>
									<div class="form-group">
										<label for="uname1">port</label> 
										<input type="text" class="form-control" name="port" id="port" required="" placeholder="Port Number">
										<!-- div class="invalid-feedback">Please enter your port number</div -->
									</div>
									<div class="form-group">
										<label for="uname1">data base</label>
										 <input type="text" class="form-control" name="database" id="database" required="" placeholder="Data base">
										<!--div class="invalid-feedback">Please enter your jobl</div-->
									</div>
									<div class="form-group">
										<label for="uname1">Cube</label>
										 <input type="text" class="form-control" name="cube" id="cube" required="" placeholder="cube name">
										<!--div class="invalid-feedback">Please enter your cube</div-->
									</div>
									<div class="form-group">
										<label for="uname1">user name</label> 
										<input type="text" class="form-control" name="username" id="username" required="" placeholder="user name">
										<!--div class="invalid-feedback">Please enter your cube</div-->
									</div>
									<div class="form-group">
										<label>Password</label>
										 <input type="password" class="form-control" id="password" required="" name="password" placeholder="password"
											autocomplete="new-password">
										<!--div class="invalid-feedback">Please enter a password</div-->
									</div>
									<!--strong style="color: red">${msg}</strong-->

									<button type="submit" class="btn btn-primary btn-lg float-right" id="btnLogin"> 
										<span class="glyphicon glyphicon-refresh"></span> Process</button>
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