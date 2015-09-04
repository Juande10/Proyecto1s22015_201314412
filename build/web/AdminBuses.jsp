<%-- 
    Document   : AdminBuses
    Created on : 28/08/2015, 04:29:28 PM
    Author     : Juande
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Administracion de Estaciones Generales</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
function mostrar(id) {
    if (id === "Crear") {
        $("#Crear").show();
        $("#Modificar").hide();
        $("#Eliminar").hide();
    }

    if (id === "Modificar") {
        $("#Crear").hide();
        $("#Modificar").show();
        $("#Eliminar").hide();
    }

    if (id === "Eliminar") {
        $("#Crear").hide();
        $("#Modificar").hide();
        $("#Eliminar").show();
    }
}
</script>
</head>
<body>  
    <%!
    public void Prueba(){
        System.out.println("Hola mundo");
    }
    %>    

<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="#">Bienvenido<span> Administrador</span></a> <small>201314412</small></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="PrincipalAdministrador.jsp">Pagina Principal</a></li>
          <li><a href="AdminAdministradores.jsp">Administradores</a></li>
          <li><a href="AdminEsGeneral.jsp">Estaciones Generales</a></li>
          <li><a href="AdminEsClave.jsp">Estaciones Clave</a></li>
          <li><a href="AdminChofer.jsp">Choferes</a></li>
          <li class="active"><a href="AdminBuses.jsp">Buses</a></li>
          <li><a href="AdminRutas.jsp">Rutas</a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize"> <img src="images/hbg_img.jpg" width="948" height="295" alt="" class="hbg_img" /></a>
      <div class="clr"></div>
      <div class="mainbar">
        <div class="article">
          <h2><span>Proyecto</span> Transmetro</h2>
      
          <div class="clr"></div>
          <img src="images/img1.jpg" width="201" height="135" alt="" class="fl" />
          <p> En esta pagina se puede administrar la informacion de los buses:           
               <p> - Agregar</p>
               <p> - Modificar</p>
               <p> - Eliminar</p>
                <form action="index.php" method="post">
                Seleccione la accion que desea realizar: 
                <select id="tipo" name="tipo" onChange="mostrar(this.value);">
                    <option value="Crear">Crear Bus</option>
                    <option value="Modificar">Modificar Bus</option>
                    <option value="Eliminar">Eliminar Bus</option>
                 </select>
                </form>
                <!--Formulario para crear un usuario administrador esta si se muestra por default al iniciar por eso no lleva el style="display: none;"-->  
                <div id="Crear">
                    <h2>Crear Bus</h2>
                    <form action="index.php" method="post">
                        <p><label for="lblusuario" style="font-size: 20px;">Ingrese el numero de bus a registrar: </label><br/>
                        <input type="text" name="id" /></p>
                    </form>
                </div>
                
                <!--Formulario para modificar informacion de un administrador-->  
                <div id="Modificar" style="display: none;">
                    <h2>Modificar Bus</h2>
                    <form action="index.php" method="post" >
                        <p><label for="lblusuario" style="font-size: 20px;">Asigne un id: </label><br/>
                        <input type="text" name="id" /></p>
                        
                        <p><label for="lblusuario" style="font-size: 20px;">Asigne un nombre: </label><br/>
                        <input type="text" name="nombre" /></p>
                    </form>
                </div>
                
                <!--Formulario para eliminar informacion de un administrador-->  
                <div id="Eliminar" style="display: none;">
                    <h2>Eliminar Bus</h2>
                    <form action="index.php" method="post" >
                        <p><label for="lblusuario" style="font-size: 20px;">Escriba el numero del bus a eliminar: </label><br/>
                        <input type="text" name="ideliminar" /></p>
                    </form>
                </div>
        </div>
        <div class="article">   
        </div>  
      </div>
      <div class="sidebar">        
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Barra de</span> Menu</h2>
          <div class="clr"></div>
          <input type="button"
          value="Cerrar Sesion"
          id="btnCerrar" 
          name="btnCerrar" 
          onclick= "self.location.href = 'Inicio.jsp'" />
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image Gallery</span></h2>
        <a href="#"><img src="images/pix1.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/pix2.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/pix3.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/pix4.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/pix5.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/pix6.jpg" width="58" height="58" alt="" /></a> </div>
      <div class="col c2">
        <h2><span>Lorem Ipsum</span></h2>
        <p>Lorem ipsum dolor<br />
          Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. <a href="#">Morbi tincidunt, orci ac convallis aliquam</a>, lectus turpis varius lorem, eu posuere nunc justo tempus leo. Donec mattis, purus nec placerat bibendum, dui pede condimentum odio, ac blandit ante orci ut diam.</p>
      </div>
      <div class="col c3">
        <h2><span>Contact</span></h2>
        <p>Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue.</p>
        <p><a href="#">support@yoursite.com</a></p>
        <p>+1 (123) 444-5677<br />
          +1 (123) 444-5678</p>
        <p>Address: 123 TemplateAccess Rd1</p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">Copyright &copy; <a href="#">Juande</a>. All Rights Reserved</p>
      <p class="rf">Design by Juande :)</p>
      <div class="clr"></div>
    </div>
  </div>
</div>
</body>
</html>
