<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dimension</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<script>
 window.onload = function() {
 document.getElementById("Save").onclick = function fun() {
 var x = document.forms["myForm"]["catalog"].value;
 var y = document.forms["myForm"]["dim"].value;
  var str = '<Envelope xmlns="http://schemas.xmlsoap.org/soap/envelope/"><Body>'+ 
           ' <Execute xmlns="urn:schemas-microsoft-com:xml-analysis"><Command>'+ 
          '  <Batch xmlns="http://schemas.microsoft.com/analysisservices/2003/engine">'+ 
	'<Parallel>'+ 
		'<Process xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" '+ 
		'xmlns:ddl2= "http://schemas.microsoft.com/analysisservices/2003/engine/2" '+ 
		'xmlns:ddl2_2="http://schemas.microsoft.com/analysisservices/2003/engine/2/2" '+ 
		'xmlns:ddl100_100="http://schemas.microsoft.com/analysisservices/2008/engine/100/100" '+ 
		'xmlns:ddl200="http://schemas.microsoft.com/analysisservices/2010/engine/200" '+ 
		'xmlns:ddl200_200="http://schemas.microsoft.com/analysisservices/2010/engine/200/200" '+ 
		'xmlns:ddl300="http://schemas.microsoft.com/analysisservices/2011/engine/300" '+ 
		'xmlns:ddl300_300="http://schemas.microsoft.com/analysisservices/2011/engine/300/300" '+ 
		'xmlns:ddl400="http://schemas.microsoft.com/analysisservices/2012/engine/400" '+ 
		'xmlns:ddl400_400="http://schemas.microsoft.com/analysisservices/2012/engine/400/400">'+ 
			'<Object>'+ 
		'		<DatabaseID>'+x+'</DatabaseID>'+ 
		'		<DimensionID>'+y+'</DimensionID>'+ 
		'	</Object>'+ 
		'	<Type>ProcessUpdate</Type>'+ 
		'	<WriteBackTableCreation>UseExisting</WriteBackTableCreation>'+ 
	'	</Process>'+ 
	'</Parallel>'+ 
'</Batch>'+ 
            '</Command><Properties><PropertyList></PropertyList>'+ 
           ' </Properties></Execute></Body></Envelope>';
 var Url = "http://localhost/olap/msmdpump.dll";
 var xhr = new XMLHttpRequest();
 xhr.open('POST', Url, true);
 xhr.onload = function (){
         var results = xhr.responseText;
         console.log(results);
     //   alert("success");
        swal("Dimension!", "traiter avec succès!", "success");
     }
     xhr.setRequestHeader('Content-Type', 'text/xml');
 xhr.send(str);

 }
 }
</script>
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
								<h3 class="mb-0">Traiter Dimension</h3>
							</div>
							<div class="card-body">
								<form class="form" role="form" autocomplete="off" id="#" name="myForm" novalidate="" action="#" method="#">

									<div class="form-group">
										<!--label for="uname1" style="color: black">data base</label-->
										 <input type="text" class="form-control" name="catalog" id="catalog" required="" placeholder="Entrer la base">
										<!--div class="invalid-feedback">Please enter your jobl</div-->
									</div>
									<div class="form-group">
										<!--label for="uname1" style="color: black">Dimension</label-->
										 <input type="text" class="form-control" name="dim" id="dim" required="" placeholder="Entrer dimension">
										<!--div class="invalid-feedback">Please enter your cube</div-->
									</div>
									<!--strong style="color: red">${msg}</strong-->

									<button type="submit" class="btn btn-primary btn-lg float-left"  id="Save" onclick="f1()"> 
										<span class="glyphicon glyphicon-refresh"></span> Process</button>
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