<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<form>
		<field name="menuRecord">
			
			<grammar mode="dtmf" src="builtin:dtmf/digits?length=1"/>
			
			<prompt>Pruebas de concepto relacionadas con las grabaciones.</prompt>
			<prompt>Para grabación con record, pulse 1.</prompt>
			<prompt>Para grabación con record con almacenamiento, pulse 2.</prompt>
			<prompt>Para recordutterance, pulse 3.</prompt>

			<prompt>Para volver al menú inicial, pulse 0.</prompt>
			 
			<filled>				
				<if cond="menuRecord =='1'"> 
					<log label="TRAZAS">Record Tests Menu - Record.</log>			
					<goto next="RecordTests/record.jsp"/> 				
				<elseif cond="menuRecord =='2'"/>
					<log label="TRAZAS">Record Tests Menu - Record con almacenamiento.</log>			
					<goto next="RecordTests/recordAndStore.jsp"/> 				
				<elseif cond="menuRecord =='3'"/>
					<log label="TRAZAS">Record Tests Menu - Record Utterance.</log>			
					<goto next="RecordTests/recordutterance.jsp"/> 				

				<elseif cond="menuRecord =='0'"/>
					<log label="TRAZAS">Record Tests Menu - Menú inicial.</log>			
					<goto next="inicio.jsp"/> 				
				</if>
				
				<clear namelist="menuRecord"/>
			</filled>
		</field>
		
	</form>

</vxml>