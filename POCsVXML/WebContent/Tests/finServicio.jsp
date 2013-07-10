<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >
	
	<meta http-equiv="Expires" content="0"/>

<!-- 
************************************************
********** MONICA ***********
************************************************
-->

<!-- 
************************************************
********** CAPTURA LOCAL DEL CUELGUE ***********
************************************************
-->

<catch event="connection.disconnect.hangup">
		
	<log> DISCONNECT </log>	
	<assign name="PRM_codigoRetorno" expr="'CUELGUE'"/>		
	<log label="TRAZAS"> HANG UP </log>		
	<goto next="#FIN_SERVICIO"/>

</catch>	


	<form id="FIN_SERVICIO">
			<block>
				<log> FIN LLAMADA </log>
				<log>El codigo de retorno al final de la llamada: <value expr="PRM_codigoRetorno"/></log>
				<exit />
			</block>				
	</form>

</vxml>