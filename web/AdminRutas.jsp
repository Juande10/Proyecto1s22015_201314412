<%-- 
    Document   : AdminRutas
    Created on : 28/08/2015, 04:35:35 PM
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
        $("#Asignar").hide();
        $("#Eliminar").hide();
    }

    if (id === "Asignar") {
        $("#Crear").hide();
        $("#Asignar").show();
        $("#Eliminar").hide();
    }

    if (id === "Eliminar") {
        $("#Crear").hide();
        $("#Asignar").hide();
        $("#Eliminar").show();
    }
}

</script>
<script type="text/javascript">
function tipoestacion(id){
    if (id === "Clave") {
        $("#Clave").show();
        $("#General").hide();
    }
    if (id === "General"){
        $("#Clave").hide();
        $("#General").show();
    }
}
</script>
</head>
<body>  
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
          <li><a href="AdminBuses.jsp">Buses</a></li>
          <li class="active"><a href="AdminRutas.jsp">Rutas</a></li>
          <li><a href="Reportes.jsp">Reportes</a></li>
          <li><a href="Asignaciones.jsp">Asignaciones</a></li>
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
          <p> En esta pagina se puede administrar la informacion de las rutas para crear una ruta debe primero crearla por su nombre seguido de eso debe asignar las estaciones deseadas:           
               <p> - Agregar</p>
               <p> - Modificar</p>
               <p> - Eliminar</p>
                <form action="AdminRutas.jsp" method="post">
                Seleccione la accion que desea realizar: 
                <select id="tipo" name="tipo" onChange="mostrar(this.value);">
                    <option value="Crear">Crear Ruta</option>
                    <option value="Asignar">Asignar Estaciones</option>
                    <option value="Eliminar">Eliminar Ruta</option>
                 </select>
                </form>
                <!--Formulario para crear un usuario administrador esta si se muestra por default al iniciar por eso no lleva el style="display: none;"-->  
                <div id="Crear">
                    <h2>Crear Ruta</h2>
                    <form action="AdminRutas.jsp" method="post">
                        <p><label for="lblusuario" style="font-size: 20px;">Ingrese el nombre de la ruta: </label><br/>
                        <input type="text" name="nombreCrearRuta" /></p>
                        <input type="submit" value="Crear Ruta" name="CrearRuta"/>
                            <%-- start web service invocation --%><hr/>
                            <%
                                if(request.getParameter("nombreCrearRuta") != null ){
                                    if(!request.getParameter("nombreCrearRuta").equals("")){
                                        try {
                                            webservice.WS_Service service = new webservice.WS_Service();
                                            webservice.WS port = service.getWSPort();
                                             // TODO initialize WS operation arguments here
                                            java.lang.String nombre = request.getParameter("nombreCrearRuta");
                                            // TODO process result here
                                            boolean result = port.crearRuta(nombre);
                                            if(result == true){
                                                String mensaje="<script language='javascript'>alert('Ruta creada'" +");</script>"; 
                                                out.println(mensaje);
                                            }else{
                                                String mensaje="<script language='javascript'>alert('Ruta existente o incorrecta'" +");</script>"; 
                                                out.println(mensaje);
                                            }
                                        } catch (Exception ex) {
                                            // TODO handle custom exceptions here
                                            String mensaje="<script language='javascript'>alert('Error en el metodo de crear ruta'" +");</script>"; 
                                            out.println(mensaje);
                                        }
                                    }else{
                                        String mensaje="<script language='javascript'>alert('Llene los campos'" +");</script>"; 
                                        out.println(mensaje);
                                    }
                                    
                                }
                  
                            %>
                            <%-- end web service invocation --%><hr/>

                    </form>
                </div>
                
                <!--Formulario para modificar informacion de un administrador-->  
                <div id="Asignar" style="display: none;">
                    <h2>Asignar Estaciones</h2>
                    <form action="AdminRutas.jsp" method="post" >
                        <h3>Seleccione la ruta a la que desea asignarle estaciones:</h3>
                        <select name="RutaAsignar">  
                            <option value="Seleccione" selected="selected">Seleccione</option>
                                    <%-- start web service invocation --%><hr/>
                                <%
                                try {
                                    webservice.WS_Service service = new webservice.WS_Service();
                                    webservice.WS port = service.getWSPort();
                                    // TODO process result here
                                    java.util.List<java.lang.Object> result = port.devolverListaRutas();
                                    int tamano = result.size();
                                    for(int i = tamano - 1;i>=0;i--){
                                        String nombre = result.get(i).toString();
                                        %>
                                        <option value = "<%=nombre%>"><%=nombre%></option>
                                        <%
                                        }
                                    
                                } catch (Exception ex) {
                                    // TODO handle custom exceptions here
                                }
                                %>
                                <%-- end web service invocation --%><hr/>
                        </select>
                        
                        <form action="AdminRutas.jsp" method="post">
                            Seleccione el tipo de estacion a asignar:
                            <select id="tipoEstacion" name="tipoEstacion" onChange="tipoestacion(this.value)">
                                <option value="Clave">Estacion Clave</option>
                                <option value="General">Estacion General</option>
                            </select>
                        </form>                       
                        <!--Formulario para mostrar estaciones clave-->  
                        <div id="Clave">
                            <h2>Estaciones Clave</h2>
                            <form action="AdminRutas.jsp" method="post" >
                                <p><label for="lblusuario" style="font-size: 20px;">Seleccione la estacion clave que desea agregar a la ruta: </label><br/>
                                    <select name="EstaClave">
                                        <option value="Seleccione" selected="selected">Seleccione</option>
                                        <%-- start web service invocation --%><hr/>
                                        <%
                                        try {
                                            webservice.WS_Service service = new webservice.WS_Service();
                                            webservice.WS port = service.getWSPort();
                                            // TODO process result here
                                            java.util.List<java.lang.Object> result = port.devolverIdsClave();
                                            java.util.List<java.lang.Object> result2 = port.devolverNombresClave();
                                            int tamano = result.size();
                                            for(int i = tamano - 1;i>=0;i--){
                                                String id = result.get(i).toString();
                                                String nombre = result2.get(i).toString();
                                                %>
                                                <option value = "<%=id%>"><%=nombre%></option>
                                                <%
                                                }
                                        } catch (Exception ex) {
                                            // TODO handle custom exceptions here
                                        }
                                        %>
                                        <%-- end web service invocation --%><hr/>
                                    </select>
                                    <input type="submit" value="Asignar Estacion Clave" name="AsignaClave"/>
                                        <%-- start web service invocation --%><hr/>
                                        <%
                                        if(request.getParameter("EstaClave") != null && request.getParameter("RutaAsignar") != null){
                                            if(request.getParameter("EstaClave").equals("Seleccione") || request.getParameter("RutaAsignar").equals("Seleccione")){
                                                
                                            }else{
                                                try {
                                                    webservice.WS_Service service = new webservice.WS_Service();
                                                    webservice.WS port = service.getWSPort();
                                                     // TODO initialize WS operation arguments here
                                                    java.lang.String nombreruta = request.getParameter("RutaAsignar");
                                                    java.lang.String idestacion = request.getParameter("EstaClave");
                                                    java.lang.String tipoestacion = "Clave";
                                                    // TODO process result here
                                                    boolean result = port.asignarEstacion(nombreruta, idestacion, tipoestacion);
                                                    if(result == true){
                                                        String mensaje="<script language='javascript'>alert('Se asigno una estacion clave a esta ruta');</script>"; 
                                                        out.println(mensaje);
                                                    }else{
                                                        String mensaje="<script language='javascript'>alert('No se pudo asignar');</script>"; 
                                                        out.println(mensaje);
                                                    }
                                                } catch (Exception ex) {
                                                    // TODO handle custom exceptions here
                                                    String mensaje="<script language='javascript'>alert('Error al tratar de asignar general');</script>"; 
                                                    out.println(mensaje);
                                                }
                                            }
                                        }
                                        
                                        %>
                                        <%-- end web service invocation --%><hr/>

                            </form>
                        </div>
                                    
                                    
                                    
                        <!--Formulario para mostrar estaciones generales-->  
                        <div id="General" style="display: none;">
                            <h2>Estaciones Generales</h2>
                            <form action="AdminRutas.jsp" method="post" >
                                <p><label for="lblusuario" style="font-size: 20px;">Seleccione la estacion general que desea agregar a la ruta: </label><br/>
                                <select name="EstaGeneral">
                                        <option value="Seleccione" selected="selected">Seleccione</option>
                                        <%-- start web service invocation --%><hr/>
                                        <%
                                        try {
                                            webservice.WS_Service service = new webservice.WS_Service();
                                            webservice.WS port = service.getWSPort();
                                            // TODO process result here
                                            java.util.List<java.lang.Object> result = port.devolverIdsGeneral();
                                            java.util.List<java.lang.Object> result2 = port.devolverNombresGeneral();
                                            int tamano = result.size();
                                            for(int i = tamano - 1;i>=0;i--){
                                                String id = result.get(i).toString();
                                                String nombre = result2.get(i).toString();
                                                %>
                                                <option value = "<%=id%>"><%=nombre%></option>
                                                <%
                                                }
                                        } catch (Exception ex) {
                                            // TODO handle custom exceptions here
                                        }
                                        %>
                                        <%-- end web service invocation --%><hr/>
                                </select>
                                <input type="submit" value="Asignar Estacion General" name="AsignaGeneral"/>
                                    <%-- start web service invocation --%><hr/>
                                    <%
                                        if(request.getParameter("EstaGeneral") != null && request.getParameter("RutaAsignar") != null){
                                            if(request.getParameter("EstaGeneral").equals("Seleccione") || request.getParameter("RutaAsignar").equals("Seleccione")){
                                                
                                            }else{
                                                try {
                                                    webservice.WS_Service service = new webservice.WS_Service();
                                                    webservice.WS port = service.getWSPort();
                                                     // TODO initialize WS operation arguments here
                                                    java.lang.String nombreruta = request.getParameter("RutaAsignar");
                                                    java.lang.String idestacion = request.getParameter("EstaGeneral");
                                                    java.lang.String tipoestacion = "General";
                                                    // TODO process result here
                                                    boolean result = port.asignarEstacion(nombreruta, idestacion,tipoestacion);
                                                    if(result == true){
                                                        String mensaje="<script language='javascript'>alert('Se asigno una estacion general a esta ruta');</script>"; 
                                                        out.println(mensaje);
                                                    }else{
                                                        String mensaje="<script language='javascript'>alert('No se pudo asignar');</script>"; 
                                                        out.println(mensaje);
                                                    }
                                                } catch (Exception ex) {
                                                    // TODO handle custom exceptions here
                                                    String mensaje="<script language='javascript'>alert('Error al tratar de asignar general');</script>"; 
                                                    out.println(mensaje);
                                                }
                                            }
                                        }
                                    
                                    %>
                                    <%-- end web service invocation --%><hr/>

                            </form>
                        </div>
                    </form>
                </div>
                
                <!--Formulario para eliminar informacion de un administrador-->  
                <div id="Eliminar" style="display: none;">
                    <h2>Eliminar Ruta</h2>
                    <form action="AdminRutas.jsp" method="post" >
                        <p><label for="lblusuario" style="font-size: 20px;">Escriba el nombre de la ruta a eliminar: </label><br/>
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
