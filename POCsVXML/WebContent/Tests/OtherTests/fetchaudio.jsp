<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<property name="fetchaudio" value="Resources/Audios/MusicaEspera16.wav"/>
	<property name="fetchaudiodelay" value="10s"/>
	<property name="fetchaudiominimum" value="2s"/>
  
	<form>
		<block>
			<prompt>Esto es una prueba de fetch audio.</prompt>
      		<submit next="OtherTests/fetchaudio2.jsp" fetchtimeout="100s"/>
    	</block>
	</form>

</vxml>