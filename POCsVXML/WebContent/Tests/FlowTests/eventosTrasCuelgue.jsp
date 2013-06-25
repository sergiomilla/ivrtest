<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

  <catch event="connection.disconnect.hangup">
	<assign name="PRM_codigoRetorno" expr="'CUELGUE'"/>		
	<log label="TRAZAS"> HANG UP  en eventosTrasCuelgue.jsp</log>	
	<goto next="FlowTests/eventosTrasCuelgue2.jsp"/>	
  </catch>

<form>
		<field name="menuEventos">
			
			<grammar mode="dtmf" src="builtin:dtmf/digits?length=1"/>
			
			<prompt>Por favor, cuelgue ahora para ver qué eventos se generan tras un cuelgue.</prompt>

			<filled>				
		
				<prompt>Te hemos dicho que cuelgues.</prompt>
				<prompt> A ver si ahora haces caso.</prompt>
				
				<clear namelist="menuEventos"/>
			</filled>
		</field>
</form>

</vxml>