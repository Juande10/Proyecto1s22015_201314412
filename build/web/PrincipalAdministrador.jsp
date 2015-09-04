<%-- 
    Document   : PrincipalAdministrador
    Created on : 27/08/2015, 10:46:45 PM
    Author     : Juande
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Pagina Principal de Administradores</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
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
          <li class="active"><a href="PrincipalAdministrador.jsp">Pagina Principal</a></li>
          <li><a href="AdminAdministradores.jsp">Administradores</a></li>
          <li><a href="AdminEsGeneral.jsp">Estaciones Generales</a></li>
          <li><a href="AdminEsClave.jsp">Estaciones Clave</a></li>
          <li><a href="AdminChofer.jsp">Choferes</a></li>
          <li><a href="AdminBuses.jsp">Buses</a></li>
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
          <p> El administrador es el encargado del manejo de la asignación de los buses, 
              la agregación de los choferes y los usuarios de las estaciones. 
              De inicio para crear todo el sistema debe tener interno un servidor ya creado 
              esto se puede hacer ya dentro del código, esto es para que se tenga ya uno 
              definido, luego es este debe mostrar algún menú donde se agreguen todos los 
              demás usuarios, los cuales pueden ser:
              &nbsp;
               <p>  Para administrarar solo seleccione el tipo de usuario que desea administrar en las pestañas de arriba
               <p> - Administrador: Para el crear un administrador se debe tener el correo, y su contraseña &nbsp;
               <p>- Estaciones clave: Para crear estaciones se debe asignarles un id numérico, el nombre de la estación y su contraseña &nbsp;
               <p> - Estaciones generales: Para crear estaciones se debe asignarles un id numérico, el nombre de la estación y su contraseña &nbsp;
               <p> - Choferes: Para crear un chofer se debe asignar por medio de su nombre apellido y una clave y tiene su respectiva contraseña &nbsp;
               <p> - Crear bus: al crear el bus solo se tiene que medir el número del bus que se va a registrar, este no tiene usuario solo el administrador puede verlo este se tiene que almacenar en una lista doblemente enlazada &nbsp;
               <p> - Crear ruta: La ruta se crea por medio de un Nombre de la ruta, y el ingreso de las estaciones por las cuales este tiene que pasar, por ejemplo existe estaciones A,B,C</p>
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
