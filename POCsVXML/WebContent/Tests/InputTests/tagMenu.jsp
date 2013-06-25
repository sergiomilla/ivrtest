<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

<menu>
  <property name="inputmodes" value="dtmf"/>
  <prompt>
    Probamos el tag menú. Pulsa 1, 2 o 3 para volver al menú anterior.   
  </prompt>
   	<noinput>  
    	<prompt> No he escuchado nada. Pulse 1, 2 o 3 para volver al menú anterior. </prompt>   
    </noinput>
    
    <nomatch> 	
    	<prompt> No te he entendido. Pulse 1, 2 o 3 para volver al menú anterior. </prompt>    
    </nomatch>
  <choice dtmf="1" next="inicio.jsp"/>
  <choice dtmf="2" next="InputTests/inputTestsMenu.jsp"/>
  <choice dtmf="3" next="InputTests/inputTestsMenu.jsp"/>
</menu>

</vxml>