<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<form>
		<block>
			<prompt> Reproduciendo un TTS simple. </prompt>
			<prompt> Se pueden añadir todos los prompts que se quiera </prompt>
			<goto next="OutputTests/outputTestsMenu.jsp"/>
		</block>
	</form>

</vxml>