<%-- 
    Document   : Asignaciones
    Created on : 19/09/2015, 01:49:32 PM
    Author     : Juande
--%>

<%@page import="java.io.File"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
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
    if (id === "Individual") {
        $("#Individual").show();
        $("#Masiva").hide();
        
    }

    if (id === "Masiva") {
        $("#Individual").hide();
        $("#Masiva").show();
    }
}
</script>
</head>
<body>  
    <%!
    public String cadena = "";
    public String cadena2 = "";

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
          <li><a href="AdminBuses.jsp">Buses</a></li>
          <li><a href="AdminRutas.jsp">Rutas</a></li>
          <li><a href="Reportes.jsp">Reportes</a></li>
          <li class="active"><a href="Asignaciones.jsp">Asignaciones</a></li>
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
          <p> En esta pagina se puede realizar las asignaciones a los choferes          
                <form action="Asignaciones.jsp" method="post">
                Seleccione la forma para realizar la asignacion:
                <select id="tipo" name="tipo" onChange="mostrar(this.value);">
                    <option value="Individual">Carga Individual</option>
                    <option value="Masiva">Carga Masiva</option>
                 </select>
                </form>
              
                <!--Formulario para realizar una asignacion individual esta si se muestra por default al iniciar por eso no lleva el style="display: none;"-->  
                <div id="Individual">
                    <h2>Asignacion Individual</h2>
                    <form action="Asignaciones.jsp" method="post">
                        <p><label for="lblusuario" style="font-size: 20px;">IdBus</label><br/>
                        <input type="text" name="IdBusInd" /></p>
                        
                        <p><label for="lblusuario" style="font-size: 20px;">Ruta</label><br/>
                        <input type="text" name="RutaInd" /></p>
                        
                        <p><label for="lblusuario" style="font-size: 20px;">Id de Chofer</label><br/>
                        <input type="text" name="IdChoferInd" /></p>
                        
                        <p><label for="lblusuario" style="font-size: 20px;">Fecha [dd/MM/yyyy]</label><br/>
                        <input type="text" name="fechaInd" /></p>
                        
                        <p><label for="lblusuario" style="font-size: 20px;">Horario de Inicio </label><br/>
                        <input type="text" name="HorarioInicio" /></p>
                        
                        <p><label for="lblusuario" style="font-size: 20px;">Horario de Finalizacion </label><br/>
                        <input type="text" name="HorarioFin" /></p>
                                                             
                        <input type="submit" value="Asignar" name="AsignaInd"/>
                            <%-- start web service invocation --%><hr/>
                            <%
                                if(request.getParameter("IdBusInd") != null && request.getParameter("RutaInd") != null && request.getParameter("IdChoferInd") != null && request.getParameter("HorarioInicio") != null && request.getParameter("HorarioFin") != null && request.getParameter("fechaInd") != null){
                                    if(request.getParameter("IdBusInd").equals("") || request.getParameter("RutaInd").equals("") || request.getParameter("IdChoferInd").equals("") || request.getParameter("HorarioInicio").equals("") || request.getParameter("HorarioFin").equals("") || request.getParameter("fechaInd").equals("")){
                                        String mensaje="<script language='javascript'>alert('Llenar los campos');</script>"; 
                                        out.println(mensaje);
                                    }else{
                                        try {
                                            webservice.WS_Service service = new webservice.WS_Service();
                                            webservice.WS port = service.getWSPort();
                                             // TODO initialize WS operation arguments here
                                            String bus = request.getParameter("IdBusInd");
                                            String ruta = request.getParameter("RutaInd");
                                            String chofer = request.getParameter("IdChoferInd");
                                            String horarioini = request.getParameter("HorarioInicio");
                                            String horariofin = request.getParameter("HorarioFin");
                                            String fecha = request.getParameter("fechaInd");
                                            cadena2 = cadena2 + bus + "," + ruta + "," + chofer + ","+horarioini+","+horariofin+","+fecha;
                                            java.lang.String contenido = cadena2;
                                            // TODO process result here
                                            boolean result = port.leerArchivo(contenido);
                                            if(result == true){
                                                String mensaje="<script language='javascript'>alert('Asignacion exitosa');</script>"; 
                                                out.println(mensaje);
                                            }else{
                                                String mensaje="<script language='javascript'>alert('No se completo la asignacion');</script>"; 
                                                out.println(mensaje);
                                            }
                                            cadena2 = "";
                                        } catch (Exception ex) {
                                            // TODO handle custom exceptions here
                                            String mensaje="<script language='javascript'>alert('Error en la asignacion individual');</script>"; 
                                            out.println(mensaje);
                                        }
                                    }
                                }
                            
                            %>
                            <%-- end web service invocation --%><hr/>
                    </form>
                </div>
                
                <!--Formulario para modificar informacion de un administrador-->  
                <div id="Masiva" style="display: none;">
                    <h2>Asignacion Masiva</h2>
                    <form action="Asignaciones.jsp" method="post" >
                        <input type="file" name="ruta">
                        <input type="submit" value="Leer Archivo" name="Leer"/>
                        <%
                            if(request.getParameter("ruta") != null && !request.getParameter("ruta").equals("")){
                                try{
                                    File Archivo = new File(request.getParameter("ruta"));
                                    String Ruta = "C:\\Users\\JuandeDios\\Desktop\\"+request.getParameter("ruta");
                                    BufferedReader br = new BufferedReader(new FileReader(Ruta));
                                    String linea = null;
                                    while ((linea = br.readLine())!= null){
                                        cadena = cadena + linea + "\n";
                                    }
                                    try {
                                        webservice.WS_Service service = new webservice.WS_Service();
                                        webservice.WS port = service.getWSPort();
                                         // TODO initialize WS operation arguments here
                                        java.lang.String contenido = cadena;
                                        // TODO process result here
                                        boolean result = port.leerArchivo(contenido);
                                        if(result == true){
                                                String mensaje="<script language='javascript'>alert('Asignacion exitosa');</script>"; 
                                                out.println(mensaje);
                                            }else{
                                                
                                            }
                                        cadena = "";
                                    } catch (Exception ex) {
                                        // TODO handle custom exceptions here
                                        String mensaje="<script language='javascript'>alert('Error en la asignacion');</script>"; 
                                        out.println(mensaje);
                                    }
                                }catch(Exception ex){
                                        
                                } 
                            }else{
                                
                            }
                            %>
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

