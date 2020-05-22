<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="ISO-8859-1">
<title>flux ssis</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
</head>
<body>
	<div class="d-flex" id="wrapper">
	 <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
      <!--div class="sidebar-heading">Start Bootstrap </div-->
      <img alt="" src="per.jpeg">
     <div class="list-group list-group-flush">
        <a href="BaseServlet" class="list-group-item list-group-item-action bg-light">Data Base</a>
        <a href="ssasServlet" class="list-group-item list-group-item-action bg-light">Cube</a>
        <a href="DimServlet" class="list-group-item list-group-item-action bg-light">Dimension</a>
        <a href="JobServlet" class="list-group-item list-group-item-action bg-light">Job</a>
        <a href="ssisServlet" class="list-group-item list-group-item-action bg-light">Flux SSIS</a>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->
    <!-- Page Content -->
    <div id="page-content-wrapper">
      <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
        <button class="btn btn-primary" id="menu-toggle"> Menu</button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
          <!--form class="navbar-form navbar-right">
       		 <input type="text" class="form-control" placeholder="Search...">
      	  </form-->
            <li class="nav-item active">
              <a class="nav-link" href="#"><span class="glyphicon glyphicon-log-out"></span>Logout <span class="sr-only">(current)</span></a>
            </li>
          </ul>
        </div>
      </nav>
    <!-- /#page-content-wrapper -->
  <div class="card  text-white">
							<div class="card-header bg-primary">
								<h3 class="mb-0">Executer un package</h3>
							</div>
							<div class="card-body">
								<form class="form" role="form" autocomplete="off" id="loginForm"
									novalidate="" action="ssisServlet" method="POST" >
									<div class="form-group">
										<!--label for="uname1">file</label--> 
										<input type="file" class="form-control" name="file" id="file" required="" placeholder="Enter file"  >
										<!--div class="invalid-feedback">Please enter your username or email</div-->	
									</div>
									<!--strong style="color: red">${msg}</strong-->
									<button type="submit" class="btn btn-primary btn-lg float-left" id="btnLogin" >
									<span class="glyphicon glyphicon-repeat"></span> execute</button>
								</form>
							</div>
							<!--/card-body-->
						</div>
						<!-- /form card login -->
					</div>
				</div>
 	 <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Menu Toggle Script -->
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>
</body>
</html>