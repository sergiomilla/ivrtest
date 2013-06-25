<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  > 

	<form>
		<block>
			<prompt>El siguiente audio se encuentra en el proyecto.</prompt>
			<!-- Este audio tiene un formato 8kHz 16-bit (PCM) mono (el que soporta VXI) -->
			<audio src="Resources/Audios/SAN-RBS-WELCOME-A.wav" />
			<goto next="OutputTests/outputTestsMenu.jsp"/>
		</block>
	</form>

</vxml>