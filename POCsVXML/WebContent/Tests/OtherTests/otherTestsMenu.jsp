<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<form>
		<field name="menuOther">
			
			<grammar mode="dtmf" src="builtin:dtmf/digits?length=1"/>
			
			<prompt>Pruebas de concepto varias.</prompt>
			<prompt>Para fetchaudio, pulse 1.</prompt>
			<prompt>Para variables duplicadas, pulse 2.</prompt>
			
			<prompt>Para volver al menú inicial, pulse 0.</prompt>
			 
			<filled>				
				<if cond="menuOther =='1'"> 
					<log label="TRAZAS">Other Tests Menu - Fetchaudio.</log>			
					<goto next="OtherTests/fetchaudio.jsp"/> 				
				<elseif cond="menuOther =='2'"/>
					<log label="TRAZAS">Other Tests Menu - Variables duplicadas.</log>			
					<goto next="OtherTests/varsDuplicadas.jsp"/> 				
				<elseif cond="menuOther =='0'"/>
					<log label="TRAZAS">Properties Tests Menu - Back.</log>			
					<goto next="inicio.jsp"/> 				
				</if>
				
				<clear namelist="menuOther"/>
			</filled>
		</field>
		
	</form>

</vxml>