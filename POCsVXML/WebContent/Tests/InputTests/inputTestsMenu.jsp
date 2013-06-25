<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<form>
		<field name="menuInput">
			
			<grammar mode="dtmf" src="builtin:dtmf/digits?length=1"/>
			
			<prompt>Pruebas de concepto relacionadas con input.</prompt>
			<prompt>Para gramatica DTMF inline SRGS, pulse 1.</prompt>
			<prompt>Para gramatica DTMF inline GRXML, pulse 2.</prompt>
			<prompt>Para gramatica ASR inline SRGS, pulse 3.</prompt>
			<prompt>Para gramatica ASR inline GRXML, pulse 4.</prompt>
			<prompt>Para gramatica ASR externa SRGS, pulse 5.</prompt>
			<prompt>Para gramatica ASR externa GRXML, pulse 6.</prompt>
			<prompt>Para varias gramaticas ASR externas SRGS, pulse 7.</prompt>
			<prompt>Para usar el tag menu, pulse 8.</prompt>

			<prompt>Para volver al menú inicial, pulse 0.</prompt>
			 
			<filled>					
				<if cond="menuInput=='1'"> 
					<log label="TRAZAS">Input Tests Menu - Gramatica DTMF inline SRGS.</log>			
					<goto next="InputTests/dtmfInlineSrgs.jsp"/> 				
				<elseif cond="menuInput=='2'"/> 
					<log label="TRAZAS">Input Tests Menu - Gramatica DTMF inline GRXML.</log>			
					<goto next="InputTests/dtmfInlineGrxml.jsp"/> 				
				<elseif cond="menuInput=='3'"/>
					<log label="TRAZAS">Input Tests Menu - Gramatica ASR inline SRGS.</log>			
					<goto next="InputTests/asrInlineSrgs.jsp"/> 				
				<elseif cond="menuInput=='4'"/>
					<log label="TRAZAS">Input Tests Menu - Gramatica ASR inline GRXML.</log>			
					<goto next="InputTests/asrInlineGrxml.jsp"/> 				
				<elseif cond="menuInput=='5'"/>
					<log label="TRAZAS">Input Tests Menu - Gramatica ASR externa SRGS.</log>			
					<goto next="InputTests/asrExternaSrgs.jsp"/>
				<elseif cond="menuInput=='6'"/>
					<log label="TRAZAS">Input Tests Menu - Gramatica ASR externa GRXML.</log>			
					<goto next="InputTests/asrExternaGrxml.jsp"/>
				<elseif cond="menuInput=='7'"/>
					<log label="TRAZAS">Input Tests Menu - Varias gramaticas ASR externas SRGS.</log>			
					<goto next="InputTests/asrVariasExternasSrgs.jsp"/> 	
				<elseif cond="menuInput=='8'"/>
					<log label="TRAZAS">Input Tests Menu - Menu.</log>			
					<goto next="InputTests/tagMenu.jsp"/> 	

				<elseif cond="menuInput=='0'"/>
					<log label="TRAZAS">Input Tests Menu - Menú inicial.</log>			
					<goto next="inicio.jsp"/> 	
				</if>
				
				<clear namelist="menuInput"/>
			</filled>
		</field>
		
	</form>
</vxml>



