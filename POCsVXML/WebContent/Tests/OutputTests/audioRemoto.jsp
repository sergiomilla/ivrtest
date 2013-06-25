<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  > 
 

	<form>
		<block>
			<prompt>El siguiente audio debe estar en una ubicación remota.</prompt>
			<!-- Incluir una ruta remota donde sepamos que hay un wav -->
			<audio src="http://180.82.51.90:8000/eclipse.wav"/>
			<goto next="OutputTests/outputTestsMenu.jsp"/>
		</block>
	</form>

</vxml>