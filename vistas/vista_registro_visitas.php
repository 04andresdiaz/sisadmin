 <?php
	require ('../global/conexion.php');
	session_start();
	if (isset($_SESSION['id_usuario'])) {
			$id_usuario = $_SESSION['id_usuario'];
			$consulta_arrendatario = $conexion -> query("SELECT * FROM arrendatarios WHERE cedula='$id_usuario'");
			$consulta_propietarios = $conexion -> query("SELECT * FROM propietarios WHERE cedula='$id_usuario'");
			if ($respuesta = mysqli_fetch_array($consulta_arrendatario)) {
				$nombre = $respuesta['nombre'];
				$rol = $respuesta['rol'];
				$foto = $respuesta['foto'];
			}else if ($respuesta = mysqli_fetch_array($consulta_propietarios)) {
				$nombre = $respuesta['nombre'];
				$rol = $respuesta['rol'];
				$foto = $respuesta['foto'];
			}

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <link href='../imagenes/ventanalogo.ico' rel='shortcut icon' type='image/x-icon'>
	<link rel="stylesheet" href="../css/css_estilos_vista_principal_administrador.css">
	<link rel="stylesheet" href="../css/css_estilos_cambiar_perfil.css">
	<script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
	<script type="text/javascript" src="../js/jquery.js"></script>
	<script type="text/javascript" src="../js/abriverventanarecuperarcontasena.js"></script>
	<title>Visitas</title>
</head>
<body>
	<div class="menu-lateral">
		<div class="logo-navegacion logo">
			<img src="../imagenes/logoletras2.png" alt="logo de sisadmin">
		</div>
    <div class="menumain">
		<nav class="menu">
			<ul>
				<a href="vista_principal_usuarios.php">	<li><svg class="fas fa-home"></svg><span>Inicio</span></li></a>
				<a href="vista_registro_novedades.php"><li><svg class="fas fa-exclamation-triangle"></svg><span>Novedades</span></li> </a>
				<a href="vista_registro_reserva.php"><li><svg class="fas fa-calendar-alt"></svg><span>Reservas</span></li> </a>
				<a href="vista_registro_visitas.php"><li><svg class="far fa-sticky-note"></svg><span>Visitas</span></li> </a>
			</ul>
		</nav>
		</div>
		<div class="menu-opciones">
			<ul>
				<a href=""><li>Ayuda</li></a>
				<a href=""><li>Mensajes</li></a>
				<a href="../global/cerrar_sesion.php"><li>Salir</li></a>
			</ul>
		</div>
	</div>
	<div class="contenido-principal">
		<div class="cabecera a">
			<div class="titulo">Visitas</div>
			<div class="perfil">
				<div class="foto">
					<?php echo  "<img class=\"imagen\" src=\""."../perfiles/".$foto."\"/>"; ?>
				</div>
				<div class="datos">
					<div class="nombre"><?php echo $nombre ?></div>
					<div class="rol"><?php echo $rol;?></div>
				</div>
			</div>
		</div>
		<div class="contenido">
			<iframe src="formulario_registro_visitas.php" frameborder="0"></iframe>
		</div>
	</div>
</body>
</html>
<?php
}else{
	header('Location: ../index.php');
}?>
