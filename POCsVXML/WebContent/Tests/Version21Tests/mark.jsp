<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<form>
		<field name="F1" >
			
			<prompt bargein="true" >
				<mark name="start_prompt" />
				Bienvenido al Banco Santander.
				Por favor, puede interrumpir esta
				locución cuando quiera.

				Banco Santander es una compañía bancaria española creada por la unión
				de comerciantes de Cantabria, cuyas primeras actividades financieras
				datan del 20 de agosto de 1857.
				<mark name="end_prompt" />
				<break time="1s"/>
				<prompt> Pulse una tecla para continuar.</prompt>
			</prompt>

			<grammar mode="dtmf" src="builtin:dtmf/digits" />
			
			<filled>
				<if	cond="F1$.markname=='start_prompt'">
					<prompt>
					Usted ha interrumpido la locución antes de que
					acabara.
					¿Por qué me interrumpe?
					
					</prompt>
				<else />
					<prompt>
					Gracias por escuchar toda la información.
					</prompt>
				</if>
 				<goto next="Version21Tests/version21TestsMenu.jsp"/>
			</filled>
			<noinput>
				<prompt>No ha pulsado nada.</prompt>
				<reprompt/>
			</noinput>
			<nomatch>
				<prompt>No he entendido lo que ha dicho</prompt>
				<reprompt/>
			</nomatch>
		</field>
	
	</form>

</vxml>