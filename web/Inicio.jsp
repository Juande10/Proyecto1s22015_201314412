<%-- 
    Document   : Inicio
    Created on : 25/08/2015, 03:22:50 PM
    Author     : Juande
--%>
<%@page import="javax.xml.ws.Response"%>
<%@page import="webservice.WS"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Automatización del flujo del Transmetro</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
function mostrar(id) {
    if (id === "Administrador") {
        $("#Administrador").show();
        $("#EsClave").hide();
        $("#EsGeneral").hide();
        $("#Chofer").hide();
    }

    if (id === "EsClave") {
        $("#Administrador").hide();
        $("#EsClave").show();
        $("#EsGeneral").hide();
        $("#Chofer").hide();
    }

    if (id === "EsGeneral") {
        $("#Administrador").hide();
        $("#EsClave").hide();
        $("#EsGeneral").show();
        $("#Chofer").hide();
    }

    if (id === "Chofer") {
        $("#Administrador").hide();
        $("#EsClave").hide();
        $("#EsGeneral").hide();
        $("#Chofer").show();
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
        <h1><a href="#">Trans<span>metro</span></a> <small>201314412</small></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html">Pagina Principal</a></li>
          <li><a href="support.html">Quienes Somos</a></li>
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
          <p> La Municipalidad de Guatemala le pide a la universidad de san Calos que le automatice el 
              sistema de transmetro para generar un mejor control de sus estaciones, buses y paradas. Al 
              ver los requerimientos que desea se dio una lista de pasos que él desea, uno de los requerimientos 
              es que sea versión Web y tiene dos servidores web con Java implementado, y quieren que estén en 
              estos servidores la página web y un web service. También por cuestiones de rapidez quieren que 
              todo esté en memoria no importando que le toque que perder los datos.</p>
        </div>
        <div class="article">
          <h2><span>Objetivos del</span> Proyecto</h2>
      
          <div class="clr"></div>
          <img src="images/img2.jpg" width="250 " height="200" alt="" class="fl" />
          <p> Crear una implementación de memoria dinámica a través de Objetos en Web Java
              Comprender y elaborar listas dinámicas y arboles AVL
              Definir algoritmos de búsqueda y recorridos para las listas y arboles</p>
        </div>  
      </div>
      <div class="sidebar">  
          
        <h2 class="star"><span>Barra de</span> Menu</h2>           
        <!--Menu de opcione que muestra el formulario dependiendo de cual elije -->
        <form action="index.php" method="post">
            Seleccione el tipo de usuario: 
            <select id="tipo" name="tipo" onChange="mostrar(this.value);">
                <option value="Administrador">Administrador</option>
                <option value="EsClave">Estacion Clave</option>
                <option value="EsGeneral">Estacion General</option>
                <option value="Chofer">Chofer</option>
             </select>
        </form> 
        
        <!--Formulario para iniciar sesion el administrador esta si se muestra por default al iniciar por eso no lleva el style="display: none;"-->  
        <div id="Administrador">
            <h2>Administrador</h2>
            <form action="Inicio.jsp" method="post">
                <p><label for="lblusuario" style="font-size: 20px;">Correo: </label><br/>
                <input type="text" name="correoAdmin" /></p>
                <p><label for="lblcontra" style="font-size: 20px;">Contraseña: </label><br/>
                <input type="password" name="passAdmin" /></p>
                <input type="submit" value="Iniciar Sesion Admin" name="InicioAdmin"/>
                <%
                if(request.getParameter("correoAdmin") != null && request.getParameter("passAdmin") != null){
                    try {
                        webservice.WS_Service service = new webservice.WS_Service();
                        webservice.WS port = service.getWSPort();
                         // TODO initialize WS operation arguments here
                        java.lang.String correo = request.getParameter("correoAdmin");
                        java.lang.String contrasena = request.getParameter("passAdmin");
                        // TODO process result here
                        boolean result = port.loginAdministrador(correo, contrasena);               
                        if(result == true){
                            response.sendRedirect("PrincipalAdministrador.jsp");
                        }else{
                            String mensaje="<script language='javascript'>alert('Usuario Administrador o contraseña incorrecta');</script>"; 
                            out.println(mensaje);
                        }
                    } catch (Exception ex) {
                        // TODO handle custom exceptions here
                    }
                }else{
                    
                }

            %>
            </form>          
        </div>

        
        
        <!--Formulario para iniciar sesion la estacion clave-->  
        <div id="EsClave" style="display: none;">
            <h2>EstacionClave</h2>
            <form action="Inicio.jsp" method="post">
                <p><label for="lblusuario" style="font-size: 20px;">ID: </label><br/>
                <input type="text" name="usuarioClave" /></p>
                <p><label for="lblusuario" style="font-size: 20px;">Contraseña: </label><br/>
                <input type="password" name="passClave" /></p>
                <input type="submit" value="Iniciar Sesion Clave" name="InicioClave" />
                <%
                    if(request.getParameter("usuarioClave") != null && request.getParameter("passClave") != null){                                               
                        try {
                            webservice.WS_Service service = new webservice.WS_Service();
                            webservice.WS port = service.getWSPort();
                             // TODO initialize WS operation arguments here
                            java.lang.String id = request.getParameter("usuarioClave");
                            java.lang.String contrasena = request.getParameter("passClave");
                            // TODO process result here
                            //LO ARREGLE VALIDANDO SI LA RAIZ DEL ARBOL NO ERA NULL
                            boolean result = port.loginEstacionClave(id, contrasena);
                            if(result == true){
                                response.sendRedirect("PrincipalEstacionClave.jsp");
                            }else{
                                String mensaje="<script language='javascript'>alert('Usuario Clave o contraseña incorrecta');</script>"; 
                                out.println(mensaje);   
                            }
                        } catch (Exception ex) {
                            // TODO handle custom exceptions here
                            String mensaje="<script language='javascript'>alert('ERROR!');</script>"; 
                            out.println(mensaje);   
                        }
                    }else{

                    }

            %>
            </form>
        </div>
        
        <!--Formulario para iniciar sesion la estacion general-->  
        <div id="EsGeneral" style="display: none;">
            <h2>Estacion General</h2>
            <form action="Inicio.jsp" method="post">
                <p><label for="lblusuario" style="font-size: 20px;">ID: </label><br/>
                <input type="text" name="usuarioGeneral" /></p>
                <p><label for="lblcontra" style="font-size: 20px;">Contraseña: </label><br/>
                <input type="password" name="passGeneral" /></p>
                <input type="submit" value="Iniciar Sesion General" name="InicioGeneral"/>
                <%
                    if(request.getParameter("usuarioGeneral") != null && request.getParameter("passGeneral") != null){
                        try {
                            webservice.WS_Service service = new webservice.WS_Service();
                            webservice.WS port = service.getWSPort();
                             // TODO initialize WS operation arguments here
                            java.lang.String id = request.getParameter("usuarioGeneral");
                            java.lang.String contrasena = request.getParameter("passGeneral");
                            // TODO process result here
                            boolean result = port.loginEstacionGeneral(id, contrasena);
                            out.println("Result = "+result);
                            if(result == true){
                                response.sendRedirect("PrincipalEstacionGeneral.jsp");
                            }else{
                                String mensaje="<script language='javascript'>alert('Usuario General o contraseña incorrecta');</script>"; 
                                out.println(mensaje);
                            }
                        } catch (Exception ex) {
                            // TODO handle custom exceptions here
                        }
                    }                                         
            %>

        </div>
        
        <!--Formulario para iniciar sesion el Chofer-->  
        <div id="Chofer" style="display: none;">
            <h2>Chofer</h2>
            <form action="Inicio.jsp" method="post">
                <p><label for="lblusuario" style="font-size: 20px;">ID: </label><br/>
                <input type="text" name="nombre" /></p>
                <p><label for="lblcontra" style="font-size: 20px;">Contarseña: </label><br/>
                <input type="password" name="centro" /></p>    
                <input type="button"
                value="Iniciar Sesion Chofer"
                id="btnInicio" 
                name="btnInicio" 
                onclick= "self.location.href = 'PrincipalAdministrador.jsp'" />
            </form>
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