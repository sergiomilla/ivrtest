<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<form>
	
		<block>
		  <prompt>Se va a ejecutar el contenido de tres blocks, para luego volver al menú anterior.</prompt>
		</block>
		<block>
		  <prompt>Primer block.</prompt>
		</block>
		<block>
		  <prompt>Segundo block.</prompt>
		</block>
		<block>
		  <prompt>Tercer block.</prompt>
		  <goto next="FlowTests/flowTestsMenu.jsp"/>
		</block>

	</form>
</vxml>