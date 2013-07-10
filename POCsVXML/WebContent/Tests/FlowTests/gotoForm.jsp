<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<form>
	
		<block>
			<prompt>Hacemos un goto a un form específico dentro de un documento.</prompt>
			<goto next="FlowTests/transitionDestiny.jsp#gotoForm"/>
		</block>

	</form>
</vxml>