<?xml version="1.0" encoding="UTF-8"?> 
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>"  >

 <!--  
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="de-DE" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>"  >
  -->


	<var name="PRM_codigoRetorno" expr="''"/>
	<var name="fromV21Tests" expr="false" />
	<var name="gitNuevaVar2" />
	
	<!-- 
	************************************************
	********** CAPTURA LOCAL DEL CUELGUE ***********
	************************************************
	-->
		 
	<catch event="connection.disconnect.hangup">
			
		<log> DISCONNECT  </log>	
		<assign name="PRM_codigoRetorno" expr="'CUELGUE'"/>		
		<log label="TRAZAS"> HANG UP </log>		
		<log label="TRAZAS"> El usuario ha colgado </log>
		<goto next="finServicio.jsp"/>
	</catch>	
	
	<!-- 
	*****************************************
	********** CAPTURA NORESOURCE ***********
	*****************************************
	-->
	
	<catch event="error.noresource">
		
		<assign name="PRM_codigoRetorno" expr="'ERROR NO RESOURCE'"/>		
		<log label="TRAZAS"> ERROR NO RESOURCE </log>		
		<goto next="finServicio.jsp"/>
	
	</catch>
	
	<!-- 
	******************************************
	********** CAPTURA DE ERROR **************
	******************************************
	-->
	
	<catch event="error">	
		<assign name="PRM_codigoRetorno" expr="'ERROR'"/>		
		<log label="TRAZAS"> ERROR </log>		
		<goto next="finServicio.jsp"/>
	
	</catch>	


	<form id="inicio">
				
		<field name="menuInicio">
			
			<grammar mode="dtmf" src="builtin:dtmf/digits?length=1"/>
			
			<prompt>Bienvenido a las pruebas de concepto de Voice XML.</prompt>
			<prompt>Para locuciones, pulse 1.</prompt>
			<prompt>Para inputs, pulse 2.</prompt>		
			<prompt>Para transferencias, pulse 3.</prompt>		
			<prompt>Para grabaciones, pulse 4.</prompt>		
			<prompt>Para variables telefónicas, pulse 5.</prompt>		
			<prompt>Para navegación, pulse 6.</prompt>		
			<prompt>Para validar la versión 2 punto 1 de voice XML, pulse 7.</prompt>		
			<prompt>Para logs, pulse 8.</prompt>		
			<prompt>Para otras pruebas, pulse 9.</prompt>		
			 
			<filled>
					
				<if cond="menuInicio=='1'"> 
					<log label="TRAZAS">menuInicio - Locuciones.</log>			
					<goto next="OutputTests/outputTestsMenu.jsp" /> 				
				<elseif cond="menuInicio=='2'"/>
					<log label="TRAZAS">menuInicio - Input.</log>			
					<goto next="InputTests/inputTestsMenu.jsp" /> 				
				<elseif cond="menuInicio=='3'"/>
					<log label="TRAZAS">menuInicio - Transferencias.</log>			
					<goto next="TransferTests/transferTestsMenu.jsp" /> 				
				<elseif cond="menuInicio=='4'"/>
					<log label="TRAZAS">menuInicio - Grabaciones.</log>			
					<goto next="RecordTests/recordTestsMenu.jsp" /> 				
				<elseif cond="menuInicio=='5'"/>
					<log label="TRAZAS">menuInicio - Variables telefonicas.</log>			
					<goto next="TelephonyVarsTests/telephonyVars.jsp" /> 				
				<elseif cond="menuInicio=='6'"/>
					<log label="TRAZAS">menuInicio - Navegación.</log>			
					<goto next="FlowTests/flowTestsMenu.jsp" /> 				
				<elseif cond="menuInicio=='7'"/>
					<log label="TRAZAS">menuInicio - Version 2.1.</log>			
					<goto next="Version21Tests/version21TestsMenu.jsp" /> 				
				<elseif cond="menuInicio=='8'"/>
					<log label="TRAZAS">menuInicio - Logs.</log>			
					<goto next="LogsTests/logs.jsp" /> 				
				<elseif cond="menuInicio=='9'"/>
					<log label="TRAZAS">menuInicio - Otras.</log>			
					<goto next="OtherTests/otherTestsMenu.jsp" /> 				
				</if>
			
				<clear namelist="menuInicio"/>
				
			</filled>
			
		</field>
	</form>
</vxml>
