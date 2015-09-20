<%-- 
    Document   : Reportes
    Created on : 10/09/2015, 03:03:37 PM
    Author     : Juande
--%>

<%@page import="java.io.File"%>
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
    if (id === "Administradores") {
        $("#Administradores").show();
        $("#Choferes").hide();
        $("#EsClave").hide();
        $("#EsGeneral").hide();
        $("#BusesAsign").hide();
        
    }

    if (id === "Choferes") {
        $("#Administradores").hide();
        $("#Choferes").show();
        $("#EsClave").hide();
        $("#EsGeneral").hide();
        $("#BusesAsign").hide();
    }

    if (id === "EsClave") {
        $("#Administradores").hide();
        $("#Choferes").hide();
        $("#EsClave").show();
        $("#EsGeneral").hide();
        $("#BusesAsign").hide();
    }
    
    if (id === "EsGeneral") {
        $("#Administradores").hide();
        $("#Choferes").hide();
        $("#EsClave").hide();
        $("#EsGeneral").show();
        $("#BusesAsign").hide();
    }
    if (id === "BusesAsign"){
        $("#Administradores").hide();
        $("#Choferes").hide();
        $("#EsClave").hide();
        $("#EsGeneral").hide();
        $("#BusesAsign").show();
    }
}

function refresh()
{
window.location='Reportes.jsp';
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
          <li ><a href="AdminAdministradores.jsp">Administradores</a></li>
          <li><a href="AdminEsGeneral.jsp">Estaciones Generales</a></li>
          <li><a href="AdminEsClave.jsp">Estaciones Clave</a></li>
          <li><a href="AdminChofer.jsp">Choferes</a></li>
          <li><a href="AdminBuses.jsp">Buses</a></li>
          <li><a href="AdminRutas.jsp">Rutas</a></li>
          <li class="active"><a href="Reportes.jsp">Reportes</a></li>
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
          
          <form action="Reportes.jsp" method="post">
                Seleccione la grafica que desea visualizar: 
                <select id="tipo" name="tipo" onChange="mostrar(this.value);">
                    <option value="Administradores">Administradores</option>
                    <option value="Choferes">Choferes</option>
                    <option value="EsClave">Estaciones Clave</option>
                    <option value="EsGeneral">Estaciones Generales</option>
                    <option value="BusesAsign">Buses Asignados a un chofer</option>
                    
                 </select>
                </form>
                <!--Form para ver grafica de administradores esta si se muestra por default al iniciar por eso no lleva el style="display: none;"-->  
                <div id="Administradores">
                    <h2>Grafica de Administradores</h2>
                    <form name="FormAdmin" action="Reportes.jsp" method="post">
                        <input type="submit" value="Actualizar" name="Actualizar" onsubmit=""/>
                        <%-- start web service invocation --%><hr/>
                            <%
                            try {
                                webservice.WS_Service service = new webservice.WS_Service();
                                webservice.WS port = service.getWSPort();
                                // TODO process result here
                                
                                boolean result = port.graficarAdministradores();
                                if(result = true){                                       
                                    %>
                                    <img src="GraficaAdmins.jpg">                                
                                    <%
                                        
                                }else{
                                    %>
                                    <h1>No hay administradores</h1>
                                                                      
                                    <%
                                }
                            } catch (Exception ex) {
                                // TODO handle custom exceptions here
                                String mensaje="<script language='javascript'>alert('Error en el metodo');</script>"; 
                                out.println(mensaje);
                            }
                            
                            %>
                        <%-- end web service invocation --%><hr/>        
                    </form>                    
                </div>
                
                <!--Form para mostrar grafica de arbol AVL de choferes-->  
                <div id="Choferes" style="display: none;">
                    <h2>Grafica de Choferes</h2>
                    <form action="Reportes.jsp" method="post" >
                            <%-- start web service invocation --%><hr/>
                            <%
                            try {
                                webservice.WS_Service service = new webservice.WS_Service();
                                webservice.WS port = service.getWSPort();
                                // TODO process result here
                                boolean result = port.graficarChoferes();
                                if(result == true){
                                    %>
                                        <img src="GraficaChoferes.jpg">                              
                                    <%
                                }else{
                                    %>
                                    <h1>No hay choferes</h1>                              
                                    <%
                                }
                            } catch (Exception ex) {
                                // TODO handle custom exceptions here
                            }
                            %>
                            <%-- end web service invocation --%><hr/>
                    </form>
                </div>
                
                <!--Formulario para mostrar grafica AVL de estaciones clave-->  
                <div id="EsClave" style="display: none;">
                    <h2>Grafica de Estaciones Clave</h2>
                    <form action="Reportes.jsp" method="post" >
                            <%-- start web service invocation --%><hr/>
                            <%
                            try {
                                webservice.WS_Service service = new webservice.WS_Service();
                                webservice.WS port = service.getWSPort();
                                // TODO process result here
                                boolean result = port.graficarEstacionesClave();
                                if(result == true){
                                    %>
                                        <img src="GraficaEstacionesClave.jpg">                              
                                    <%
                                }else{
                                    %>
                                    <h1>No hay Estaciones Clave</h1>                              
                                    <%
                                }
                            } catch (Exception ex) {
                                // TODO handle custom exceptions here
                            }
                            %>
                            <%-- end web service invocation --%><hr/>

                    </form>
                </div>
                
                <!--Formulario para mostrar grafica AVL de estaciones generales-->  
                <div id="EsGeneral" style="display: none;">
                    <h2>Grafica de Estaciones Generales</h2>
                    <form action="Reportes.jsp" method="post" >
                            <%-- start web service invocation --%><hr/>
                            <%
                            try {
                                webservice.WS_Service service = new webservice.WS_Service();
                                webservice.WS port = service.getWSPort();
                                // TODO process result here
                                boolean result = port.graficarEstacionesGenerales();
                                if(result == true){
                                    %>
                                        <img src="GraficaEstacionesGenerales.jpg">                              
                                    <%
                                }else{
                                    %>
                                    <h1>No hay Estaciones Generales</h1>                              
                                    <%
                                }
                            } catch (Exception ex) {
                                // TODO handle custom exceptions here
                            }
                            %>
                            <%-- end web service invocation --%><hr/>

                    </form>
                </div>
                <!--Formulario para mostrar grafica Lista de buses asignados a un chofer-->  
                <div id="BusesAsign" style="display: none;">
                    <h2>Grafica de Estaciones Generales</h2>
                    <form action="Reportes.jsp" method="post" >
                        <p><label for="lblusuario" style="font-size: 20px;">Seleccione el chofer que desea ver: </label><br/>
                        <select name="ChoferGrafica">
                            <option value="Seleccione" selected="selected">Seleccione</option>
                                <%-- start web service invocation --%><hr/>
                                <%
                                try {
                                    webservice.WS_Service service = new webservice.WS_Service();
                                    webservice.WS port = service.getWSPort();
                                    // TODO process result here
                                    java.util.List<java.lang.Object> result = port.devolverIdsChoferes();
                                    java.util.List<java.lang.Object> result2 = port.devolverNombresChoferes();
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
                                <input type="submit" value="Graficar Buses"/>
                                    <%-- start web service invocation --%><hr/>
                                    <%
                                if(request.getParameter("ChoferGrafica") != null){
                                    if(request.getParameter("ChoferGrafica").equals("Seleccione")){
                                        String mensaje="<script language='javascript'>alert('Seleccione un chofer para generar esa grafica);</script>"; 
                                        out.println(mensaje);
                                    }else{
                                        try {
                                            webservice.WS_Service service = new webservice.WS_Service();
                                            webservice.WS port = service.getWSPort();
                                             // TODO initialize WS operation arguments here
                                            java.lang.String idchofer = request.getParameter("ChoferGrafica");
                                            // TODO process result here
                                            boolean result = port.graficarBusesChofer(idchofer);
                                            if(result == true){
                                                String mensaje="<script language='javascript'>alert('Grafica para ese chofer generada exitosamente);</script>"; 
                                                out.println(mensaje);
                                                %>
                                                <img src=GraficaBusesChofer.jpg>                              
                                                <%
                                            }else{
                                                String mensaje="<script language='javascript'>alert('No se pudo generar la grafica para ese chofer);</script>"; 
                                                out.println(mensaje);
                                            }
                                        } catch (Exception ex) {
                                            // TODO handle custom exceptions here
                                            String mensaje="<script language='javascript'>alert(Error al intengar graficar para ese chofer);</script>"; 
                                            out.println(mensaje);
                                        }
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
