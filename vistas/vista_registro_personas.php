<?php
require ("../global/conexion.php");
session_start();
if (isset($_SESSION['id_usuario'])) {
	$id_usuario = $_SESSION['id_usuario'];
	$consulta = $conexion -> query("SELECT * FROM admin WHERE cedula='".$id_usuario."'");
	if ($respuesta = mysqli_fetch_array($consulta)) {
		$nombre = $respuesta['nombre'];
		$rol = $respuesta['rol'];
		$foto = $respuesta['foto'];
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link href='../imagenes/ventanalogo.ico' rel='shortcut icon' type='image/x-icon'>
	<script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="../css/css_estilos_vista_principal_administrador.css">
	<link rel="stylesheet" href="../css/css_estilos_cambiar_perfil.css">
	<script type="text/javascript" src="../js/jquery.js"></script>
	<script type="text/javascript" src="../js/abriverventanarecuperarcontasena.js"></script>
	<title>Registro</title>
</head>
<body>
	<form action="../consultas/insertar_foto.php" method="POST" enctype="multipart/form-data">
	<div id="cambiar_perfil" class="cambiar_perfil" >
		<div class="contenedor_cambio_perfil">
			<div class="header_cambio_perfil">
				<h1>Selecciona una foto de perfil</h1>
				<a href="javascript:cerrarVentanaPerfil();"><img src="../imagenes/cerrar.png" alt="cerrar.png"></a>
			</div>
			<div class="central_cambio_perfil">
				<div class="contenedor_file">
					<p>Subir desde tu computador</p>
				<input type="file" id="subir_foto" name="subir_foto" class="subir_foto" required>
				</div>
			</div>
			<div class="pie_cambio_perfil">
				<input type="submit" value="Establecer como foto de perfil" id="enviar_foto" name="enviar_foto">
				<a href="javascript:cerrarVentanaPerfil();"><div class="cancelar"><p>Cancelar</p></div></a>
			</div>
		</div>
	</div>
	</form>
	<div class="menu-lateral">
		<div class="logo-navegacion logo">
			<img src="../imagenes/logoletras2.png" alt="logo de sisadmin">
		</div>
		<div class="menumain">
		<nav class="menu">
			<ul>
				<a href="vista_principal_administrador.php"><li><svg class="fas fa-home"></svg><span>Inicio</span></li>
				<a href="vista_novedad_administrador.php"><li><svg class="fas fa-exclamation-triangle"></svg><span>Novedades</span></li> </a>
				<a href="vista_registro_personas.php"><li><svg class="far fa-sticky-note"></svg><span>Registros</span></li> </a>
				<a href="vista_reservas_administrador.php"><li><svg class="fas fa-calendar-alt"></svg><span>Reservas</span></li> </a>
				<li><svg class="fas fa-user-clock"></svg><span>Turnos</span></li>
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
			<div class="titulo">Registro</div>
			<div class="perfil">
				<div class="foto">
				<a href="javascript:abrirVentanaPerfil();">
				<div class="configurar_foto">
				<p class="texto-configurar_foto">Cambiar <br>Foto</p>
			</div></a>
					<?php echo  "<img class=\"imagen\" src=\""."../perfiles/".$foto."\"/>"; ?>
				</div>
				<div class="datos">
					<div class="nombre"><?php echo $nombre ?></div>
					<div class="rol"><?php echo $rol;?></div>
				</div>
			</div>
		</div>
		<div class="contenido">
			<iframe src="formulario_registro_personas.php" frameborder="0"></iframe>
		</div>
	</div>
</body>
</html>
<?php
}else{
	header('Location: ../index.php');
}?>
