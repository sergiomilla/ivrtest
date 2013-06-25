<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<form>
		<field name="menuOutput">
			
			<grammar mode="dtmf" src="builtin:dtmf/digits?length=1"/>
			
			<prompt>Pruebas de concepto relacionadas con locuciones.</prompt>
			<prompt>Para TTS simple, pulse 1.</prompt>
			<prompt>Para TTS de backup, pulse 2.</prompt>
			<prompt>Para audio local, pulse 3.</prompt>
			<prompt>Para audio remoto, pulse 4.</prompt>
			<prompt>Para propiedades, pulse 5. </prompt>
			 
			<prompt>Para volver al menú inicial, pulse 0.</prompt>
			 
			<filled>				
				<if cond="menuOutput =='1'"> 
					<log label="TRAZAS">Output Tests Menu - TTS Simple.</log>			
					<goto next="OutputTests/TTSSimple.jsp"/> 				
				<elseif cond="menuOutput =='2'"/>
					<log label="TRAZAS">Output Tests Menu - TTS Backup.</log>			
					<goto next="OutputTests/TTSBackup.jsp"/> 				
				<elseif cond="menuOutput =='3'"/>
					<log label="TRAZAS">Output Tests Menu - Audio local.</log>			
					<goto next="OutputTests/audioLocal.jsp"/> 				
				<elseif cond="menuOutput =='4'"/>
					<log label="TRAZAS">Output Tests Menu - Audio remoto.</log>			
					<goto next="OutputTests/audioRemoto.jsp"/> 				
				<elseif cond="menuOutput =='5'"/>
					<log label="TRAZAS">Output Tests Menu - Propiedades.</log>			
					<goto next="OutputTests/promptProperties.jsp"/> 				

				<elseif cond="menuOutput =='0'"/>
					<log label="TRAZAS">Output Tests Menu - Menú inicial.</log>			
					<goto next="inicio.jsp"/> 				
				</if>
				
				<clear namelist="menuOutput"/>
			</filled>
		</field>
		
	</form>

</vxml>