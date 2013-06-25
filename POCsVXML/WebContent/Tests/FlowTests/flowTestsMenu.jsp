<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<form>
		<field name="menuFlow">
			
			<grammar mode="dtmf" src="builtin:dtmf/digits?length=1"/>
			
			<prompt>Pruebas de concepto relacionadas con la navegación.</prompt>
			<prompt>Para blocks, pulse 1.</prompt>
			<prompt>Para submit, pulse 2.</prompt>
			<prompt>Para eventos, pulse 3.</prompt>
			<prompt>Para data, pulse 4.</prompt>
			<prompt>Para script, pulse 5.</prompt>
			<prompt>Para goto a un form específico, pulse 6.</prompt>
			<prompt>Para subdialog, pulse 7.</prompt>
			<prompt>Para eventos tras cuelgue, pulse 8.</prompt>
			
			<prompt>Para volver al menú inicial, pulse 0.</prompt>
			 
			<filled>					
				<if cond="menuFlow =='1'"> 
					<log label="TRAZAS">Flow Tests Menu - Blocks.</log>			
					<goto next="FlowTests/blocks.jsp"/> 				
				<elseif cond="menuFlow =='2'"/>
					<log label="TRAZAS">Flow Tests Menu - Submit.</log>			
					<goto next="FlowTests/submit.jsp"/> 				
				<elseif cond="menuFlow =='3'"/>
					<log label="TRAZAS">Flow Tests Menu - Eventos.</log>			
					<goto next="FlowTests/eventos.jsp"/> 				
				<elseif cond="menuFlow =='4'"/>
					<log label="TRAZAS">Flow Tests Menu - Data.</log>			
					<goto next="FlowTests/data.jsp"/> 				
				<elseif cond="menuFlow =='5'"/>
					<log label="TRAZAS">Flow Tests Menu - Script.</log>			
					<goto next="FlowTests/script.jsp"/> 				
				<elseif cond="menuFlow =='6'"/>
					<log label="TRAZAS">Flow Tests Menu - Goto a form.</log>			
					<goto next="FlowTests/gotoForm.jsp"/> 				
				<elseif cond="menuFlow =='7'"/>
					<log label="TRAZAS">Flow Tests Menu - Subdialog.</log>			
					<goto next="FlowTests/usingSubdialog.jsp"/> 				
				<elseif cond="menuFlow =='8'"/>
					<log label="TRAZAS">Flow Tests Menu - Eventos tras cuelgue.</log>			
					<goto next="FlowTests/eventosTrasCuelgue.jsp"/> 				
				
				<elseif cond="menuFlow =='0'"/>
					<log label="TRAZAS">Flow Tests Menu - Menú inicial.</log>			
					<goto next="inicio.jsp"/> 				
				</if>
				
				<clear namelist="menuFlow"/>
			</filled>
		</field>
		
	</form>
</vxml>



