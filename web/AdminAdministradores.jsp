<%-- 
    Document   : AdminAdministradores
    Created on : 28/08/2015, 03:04:11 PM
    Author     : Juande
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Administracion de Administradores</title>
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
          <li class="active"><a href="AdminAdministradores.jsp">Administradores</a></li>
          <li><a href="AdminEsGeneral.jsp">Estaciones Generales</a></li>
          <li><a href="AdminEsClave.jsp">Estaciones Clave</a></li>
          <li><a href="AdminChofer.jsp">Choferes</a></li>
          <li><a href="AdminBuses.jsp">Buses</a></li>
          <li><a href="AdminRutas.jsp">Rutas</a></li>
          <li><a href="Reportes.jsp">Reportes</a></li>
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
          <p> En esta pagina se puede administrar la informacion de los administradores:           
               <p> - Agregar</p>
               <p> - Modificar</p>
               <p> - Eliminar</p>
                <form action="index.php" method="post">
                Seleccione la accion que desea realizar: 
                <select id="tipo" name="tipo" onChange="mostrar(this.value);">
                    <option value="Crear">Crear Administrador</option>
                    <option value="Modificar">Modificar Administrador</option>
                    <option value="Eliminar">Eliminar Administrador</option>
                 </select>
                </form>
               
                <!--Formulario para crear un usuario administrador esta si se muestra por default al iniciar por eso no lleva el style="display: none;"-->  
                <div id="Crear">
                    <h2>Crear Usuario Administrador</h2>
                    <form action="AdminAdministradores.jsp" method="post">
                        <p><label for="lblusuario" style="font-size: 20px;">Asigne un correo: </label><br/>
                        <input type="text" name="CrearCorreoAdmin" /></p>
                        
                        <p><label for="lblcontra" style="font-size: 20px;">Asigne una Contraseña: </label><br/>
                        <input type="password" name="CrearContraAdmin" /></p>

                        <input type="submit" value="Crear Administrador" name="CrearAdmin"/>
                            <%-- start web service invocation --%><hr/>
                            <%
                                if(request.getParameter("CrearCorreoAdmin") != null && request.getParameter("CrearContraAdmin") != null){
                                    try {
                                        webservice.WS_Service service = new webservice.WS_Service();
                                        webservice.WS port = service.getWSPort();
                                         // TODO initialize WS operation arguments here
                                        java.lang.String correo = request.getParameter("CrearCorreoAdmin");
                                        java.lang.String contrasena = request.getParameter("CrearContraAdmin");
                                        // TODO process result here
                                        boolean result = port.crearAdministrador(correo, contrasena);
                                        if(result == true){
                                            String mensaje="<script language='javascript'>alert('Usuario Creado con exito');</script>"; 
                                            out.println(mensaje);
                                        }else{
                                            String mensaje="<script language='javascript'>alert('Error en la creacion del usuario, puede ser que ya exista');</script>"; 
                                            out.println(mensaje);
                                        }
                                    } catch (Exception ex) {
                                        // TODO handle custom exceptions here
                                        String mensaje="<script language='javascript'>alert('Error el crear usuario');</script>"; 
                                        out.println(mensaje);
                                    }
                                }else{
                                    
                                }                   
                            %>
    <%-- end web service invocation --%><hr/>

                    </form>
                </div>
                
                <!--Formulario para modificar informacion de un administrador-->  
                <div id="Modificar" style="display: none;">
                    <h2>Modificar Usuario Administrador</h2>
                    Seleccione el usuario a modificar y llene los campos:
                    <form action="AdminAdministradores.jsp" method="post" >
                        <select name="correomodificar">    
                                <option value="Seleccione">Seleccione</option>
                                    <%-- start web service invocation --%><hr/>
                                <%
                                try {
                                    webservice.WS_Service service = new webservice.WS_Service();
                                    webservice.WS port = service.getWSPort();
                                    // TODO process result here
                                    java.util.List<java.lang.Object> result = port.devolverListaAdmins();
                                    int tamano = result.size();
                                    for(int i = tamano - 1;i>=0;i--){
                                        String correos = result.get(i).toString();
                                        %>
                                        <option><%=correos%> </option>
                                        <%
                                        }
                                    }catch (Exception ex) {
                                    // TODO handle custom exceptions here
                                }
                                %>
                                <%-- end web service invocation --%><hr/>
                        </select>
                        
                        <p><label for="lblusuario" style="font-size: 20px;">Asigne un correo: </label><br/>
                        <input type="text" name="correoModificartxt" /></p>
                        
                        <p><label for="lblcontra" style="font-size: 20px;">Asigne una Contraseña: </label><br/>
                        <input type="password" name="contraModificar" /></p>
                        
                            <%-- start web service invocation --%><hr/>
                            <%
                                if(request.getParameter("correomodificar") != null){
                                    if(request.getParameter("correomodificar").equals("Seleccione")){
                                        String mensaje="<script language='javascript'>alert('Seleccione un administrador');</script>"; 
                                        out.println(mensaje);
                                    }else{
                                        try {
                                            webservice.WS_Service service = new webservice.WS_Service();
                                            webservice.WS port = service.getWSPort();
                                             // TODO initialize WS operation arguments here
                                            java.lang.String correo = request.getParameter("correomodificar");
                                            java.lang.String nuevocorreo = request.getParameter("correoModificartxt");
                                            java.lang.String contrasena = request.getParameter("contraModificar");
                                            // TODO process result here
                                            if(nuevocorreo.equals("") || nuevocorreo.equals(null) || contrasena.equals("") || contrasena.equals(null)){
                                                String mensaje="<script language='javascript'>alert('Llene los campos');</script>"; 
                                                out.println(mensaje);
                                            }else{
                                                boolean result = port.modificarAdministrador(correo, nuevocorreo, contrasena);
                                                if(result == true){
                                                    String mensaje="<script language='javascript'>alert('Modificacion exitosa');</script>"; 
                                                    out.println(mensaje);
                                                }
                                            }
                                            
                                        } catch (Exception ex) {
                                            // TODO handle custom exceptions here
                                            String mensaje="<script language='javascript'>alert('Error en la modificacion');</script>"; 
                                            out.println(mensaje);
                                        }
                                    }
                                }
                            
                            %>
                            <%-- end web service invocation --%><hr/>

                        
                        <input type="submit" value="Modificar"/>
                    </form>
                </div>
                
                
                <!--Formulario para eliminar informacion de un administrador-->  
                <div id="Eliminar" style="display: none;">
                    <h2>Eliminar Usuario Administrador</h2>
                    <form action="AdminAdministradores.jsp" method="post" >
                        <p><label for="lblusuario" style="font-size: 20px;">Seleccione el correo del usuario a eliminar: </label><br/>  
                            <select name="correoeliminar">    
                                <option value="Seleccione">Seleccione</option>
                                    <%-- start web service invocation --%><hr/>
                                <% 
                                try {
                                    webservice.WS_Service service = new webservice.WS_Service();
                                    webservice.WS port = service.getWSPort();
                                    // TODO process result here
                                    java.util.List<java.lang.Object> result = port.devolverListaAdmins();
                                    int tamano = result.size();
                                    for(int i = tamano - 1;i>=0;i--){
                                        String correos = result.get(i).toString();
                                        %>
                                        <option><%=correos%> </option>
                                        <%
                                        }
                                    }catch (Exception ex) {
                                    // TODO handle custom exceptions here
                                }
                                %>
                                <%-- end web service invocation --%><hr/>
                        </select>        
                        <input type="submit" value="Eliminar"/>
                        
                            <%-- start web service invocation --%><hr/>
                        <%
                        if(request.getParameter("correoeliminar") != null){
                            String seleccionado = request.getParameter("correoeliminar");
                            if(seleccionado.equals("Seleccione")){
                                String mensaje="<script language='javascript'>alert('Seleccione un administrador');</script>"; 
                                out.println(mensaje);
                            }else{
                                try {                                    
                                webservice.WS_Service service = new webservice.WS_Service();
                                webservice.WS port = service.getWSPort();
                                 // TODO initialize WS operation arguments here
                                java.lang.String correo = request.getParameter("correoeliminar");
                                // TODO process result here
                                boolean result = port.eliminarAdministrador(correo);
                                    if(result == true){
                                        String mensaje="<script language='javascript'>alert('Eliminacion exitosa');</script>"; 
                                        out.println(mensaje);
                                    }else{
                                        String mensaje="<script language='javascript'>alert('Administrador no encontrado');</script>"; 
                                        out.println(mensaje);
                                    }
                                } catch (Exception ex) {
                                    // TODO handle custom exceptions here
                                    String mensaje="<script language='javascript'>alert('Error en la eliminacion');</script>"; 
                                    out.println(mensaje);
                                }
                                seleccionado = "Seleccione";
                            }      
                        }                        
                        %>
                        <%-- end web service invocation --%><hr/>

                        
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
