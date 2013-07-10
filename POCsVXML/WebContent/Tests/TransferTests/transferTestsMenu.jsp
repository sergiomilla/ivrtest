<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<form>
		<field name="menuTransfer">
			
			<grammar mode="dtmf" src="builtin:dtmf/digits?length=1"/>
			
			<prompt>Pruebas de concepto relacionadas con las transferencias.</prompt>
			<prompt>Para transferencia ciega, pulse 1.</prompt>
			<prompt>Para transferencia consultada, pulse 2.</prompt>
			<prompt>Para transferencia bridge, pulse 3.</prompt>
			
			<prompt>Para volver al menú inicial, pulse 0.</prompt>
			 
			<filled>				
				<if cond="menuTransfer =='1'"> 
					<log label="TRAZAS">Transfer Tests Menu - Blind Transfer.</log>			
					<goto next="TransferTests/blindTransfer.jsp"/> 				
				<elseif cond="menuTransfer =='2'"/>
					<log label="TRAZAS">Transfer Tests Menu - Consultation Transfer.</log>			
					<goto next="TransferTests/consultationTransfer.jsp"/> 				
				<elseif cond="menuTransfer =='3'"/>
					<log label="TRAZAS">Transfer Tests Menu - Bridge Transfer.</log>			
					<goto next="TransferTests/bridgeTransfer.jsp"/> 				
				
				<elseif cond="menuTransfer =='0'"/>
					<log label="TRAZAS">Transfer Tests Menu - Menú inicial.</log>			
					<goto next="inicio.jsp"/> 				
				</if>
				
				<clear namelist="menuTransfer"/>
			</filled>
		</field>
		
	</form>

</vxml>