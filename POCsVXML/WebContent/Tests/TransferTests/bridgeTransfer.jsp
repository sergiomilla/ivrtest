<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<form>
		<transfer name="transferResult" dest="tel:658960954" type="bridge" connecttimeout="10s" maxtime="20s">

			<prompt>A continuación, vamos a intentar transferirlo.</prompt>
			
			<!-- TODO: añadir grammar -->
			
			<catch event="connection.disconnect.hangup">
				<log label="TRAZAS"> Bridge transfer - connection.disconnect.hangup </log> 
			</catch>
			<catch event="error">
				<log label="TRAZAS"> Bridge transfer - error </log> 
				<prompt> Ha habido un error al intentar transferirle. </prompt>
			</catch>
			<filled>
			
				<!-- Posibles resultados: unknown, near_end_disconnect, busy, network_busy, noanswer,
				 maxtime_disconnect, network_disconnect y far_end_disconnect-->
				<log label="TRAZAS"> Bridge transfer - <value expr="transferResult"/> </log> 
				<prompt>El resultado de la transferencia es: <value expr="transferResult"/></prompt>
				<prompt>Su duración ha sido de: <value expr="transferResult$.duration"/></prompt>
				<!-- <prompt>La transferencia ha sido interrumpida con el comando: <value expr="transferResult$.inputmode"/></prompt> -->
				<!-- <prompt>La transferencia ha sido interrumpida con el siguiente utterance: <value expr="transferResult$.utterance"/></prompt> -->
				
				<!--  Intentamos transferirlo de nuevo -->
				<clear namelist="transferResult"/>
				
			</filled>
		</transfer>
	</form>
</vxml>