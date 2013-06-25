<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<form>
		<field name="menuVersion21">
			
			<grammar mode="dtmf" src="builtin:dtmf/digits?length=1"/>
			
			<prompt>Pruebas de concepto relacionadas con la version 2 punto 1 de Voice XML.</prompt>
			<prompt>Para data, pulse 1.</prompt>
			<prompt>Para for each, pulse 2.</prompt>
			<prompt>Para transferencia consultada, pulse 3.</prompt>
			<prompt>Para referenciar dinámicamente gramáticas, pulse 4.</prompt>
			<prompt>Para referenciar dinámicamente scripts, pulse 5.</prompt>
			<prompt>Para usar mark, pulse 6.</prompt>
			<prompt>Para usar namelist en el disconnect, pulse 7.</prompt>
			<prompt>Para recordutterance, pulse 8.</prompt>
			
			<prompt>Para volver al menú inicial, pulse 0.</prompt>
			 
			<filled>				
				<if cond="menuVersion21 =='1'"> 
					<log label="TRAZAS">Version 2.1 Tests Menu - Data.</log>			
      				<assign name="fromV21Tests" expr="true"/>
					<goto next="FlowTests/data.jsp"/> 				
				<elseif cond="menuVersion21 =='2'"/>
					<log label="TRAZAS">Version 2.1 Tests Menu - For each.</log>			
					<goto next="Version21Tests/foreach.jsp"/> 				
				<elseif cond="menuVersion21 =='3'"/>
					<log label="TRAZAS">Version 2.1 Tests Menu - Transferencias consultadas.</log>			
					<goto next="TransferTests/consultationTransfer.jsp"/> 				
				<elseif cond="menuVersion21 =='4'"/>
					<log label="TRAZAS">Version 2.1 Tests Menu - Referencias dinámicas a gramáticas.</log>			
					<goto next="Version21Tests/srcexprAtGrammar.jsp"/> 				
				<elseif cond="menuVersion21 =='5'"/>
					<log label="TRAZAS">Version 2.1 Tests Menu - Referencias dinámicas a scripts.</log>			
					<goto next="Version21Tests/srcexprAtScript.jsp"/> 				
				<elseif cond="menuVersion21 =='6'"/>
					<log label="TRAZAS">Version 2.1 Tests Menu - Mark.</log>			
					<goto next="Version21Tests/mark.jsp"/> 				
				<elseif cond="menuVersion21 =='7'"/>
					<log label="TRAZAS">Version 2.1 Tests Menu - Namelist en el disconnect.</log>			
					<goto next="Version21Tests/namelistAtDisconnect.jsp"/> 				
				<elseif cond="menuVersion21 =='8'"/>
					<log label="TRAZAS">Version 2.1 Tests Menu - Recordutterance.</log>			
      				<assign name="fromV21Tests" expr="false"/>
					<goto next="RecordTests/recordutterance.jsp"/> 				

				<elseif cond="menuVersion21 =='0'"/>
					<log label="TRAZAS">Version 2.1 Tests Menu - Menú inicial.</log>			
					<goto next="inicio.jsp"/> 				
				</if>
				
				<clear namelist="menuVersion21"/>
			</filled>
		</field>
		
	</form>

</vxml>