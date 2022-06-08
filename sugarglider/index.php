<?php
include'functions.php';
?>
<!DOCTYPE html>
<html lang="en">
  <head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="icon"/>

	<title>Sistem Pakar Sugar Glider</title>
	<link href="assets/css/sandstone-bootstrap.min.css" rel="stylesheet"/>
	<link href="assets/css/general.css" rel="stylesheet"/>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>           
  </head>
  <body>
	<nav class="navbar navbar-default navbar-static-top">
	  <div class="container">
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
			  <ul class="nav navbar-nav">
				<?php if($_SESSION['login']):?>
				<a class="navbar-brand" href="?m=dashboard">Sugar Glider</a>
				<li><a href="?m=diagnosa"><span class="glyphicon glyphicon-pushpin"></span> Diagnosa</a></li>
				<li><a href="?m=gejala"><span class="glyphicon glyphicon-flash"></span> Gejala</a></li>				
				<li><a href="?m=rule"><span class="glyphicon glyphicon-star"></span> Rule</a></li>   
				<li><a href="?m=password"><span class="glyphicon glyphicon-lock"></span> Password</a></li>
				<li><a href="aksi.php?act=logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				<?php else:?>
				<a class="navbar-brand" href="?m=home">Sugar Glider</a>
				<li><a href="?m=konsultasi&act=new"><span class="glyphicon glyphicon-stats"></span> Konsultasi</a></li>
				<li><a href="?m=penyakit"><span class="glyphicon glyphicon-pushpin"></span> Daftar Penyakit</a></li>
				<li><a href="?m=login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>           
				<?php endif?>    
			  </ul>          
			</div>
		</div>
	</nav>
	<div class="container">
	<?php
		if(in_array($mod, array('diagnosa', 'gejala', 'pengetahuan', 'password')) && !$_SESSION['login'])
			redirect_js('?m=login');
		if(file_exists($mod.'.php'))
			include $mod.'.php';
		else
			include 'home.php';
	?>
	</div>
	<footer class="footer bg-primary">
	  <div class="container">
			<p>Copyright &copy; <?=date('Y')?> Sistem Pakar Diagnosa Penyakit Sugar Glider | Alvenio Farhan P.</p>
	  </div>
	</footer>
	</body>
</html>