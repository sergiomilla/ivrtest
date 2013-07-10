<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<form>
		<transfer name="transferResult" dest="tel:658960954" type="consultation" connecttimeout="10s">

			<prompt>A continuación, vamos a intentar transferirlo.</prompt>
			<catch event="connection.disconnect.transfer">
				<log label="TRAZAS"> Consultation transfer - connection.disconnect.transfer </log> 
			</catch>
			<catch event="connection.disconnect.hangup">
				<log label="TRAZAS"> Consultation transfer - connection.disconnect.hangup </log> 
			</catch>
			<catch event="error">
				<log label="TRAZAS"> Consultation transfer - error </log>
				<prompt> Ha habido un error al intentar transferirle. </prompt>
			</catch>
			<filled>
				<!-- Posibles resultados: unknown, near_end_disconnect, busy, network_busy y noanswer -->
				<log label="TRAZAS"> Consultation transfer - <value expr="transferResult"/> </log> 
				<prompt>El resultado de la transferencia es: <value expr="transferResult"/></prompt>
				
				<!--  Intentamos transferirlo de nuevo -->
				<clear namelist="transferResult"/>
			</filled>
		</transfer>
	</form>
</vxml>