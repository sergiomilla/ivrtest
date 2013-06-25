<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" >

	<!-- 
	************************************************
	********* DEFINICION VARIABLES LOCALES *********
	************************************************
	-->
		
	<var name="SUB_codigoRetorno" expr="''"/>
	<var name="cantidadDeuda_actual"/>	
	
	<!-- 
	************************************************
	********** CAPTURA LOCAL DEL CUELGUE ***********
	************************************************
	-->
		 
	<catch event="connection.disconnect.hangup">
			
		<log label="TRAZAS"> DISCONNECT en subdialog.jsp </log>		
		<assign name="SUB_codigoRetorno" expr="'CUELGUE'"/>	
		<log label="TRAZAS"> HANG UP </log>		
		<return namelist="SUB_codigoRetorno"/>		
	
	</catch>	
	
	<!-- 
	*****************************************
	********** CAPTURA NORESOURCE ***********
	*****************************************
	-->
		
	<catch event="error.noresource">
		<log label="TRAZAS"> ERROR NO RESOURCE </log>
		<assign name="SUB_codigoRetorno" expr="'ERROR NO RESOURCE'"/>	
		<goto next="#MENU"/>	
	</catch>
	
	<!-- 
	******************************************
	********** CAPTURA DE ERROR **************
	******************************************
	-->
	
	<catch event="error">	
		<assign name="SUB_codigoRetorno" expr="'ERR_IVR(SUBDLG)'"/>
		<return namelist="SUB_codigoRetorno"/>		
	</catch>	

	<form id="MENU">
	
		<var name="PRM_cantidadDeuda"/>
		
		<block>
		 	<assign name="cantidadDeuda_actual" expr="PRM_cantidadDeuda"/>
		 	<log label="TRAZAS"> parametro del subdialogo PRM_cantidadDeuda: <value expr="PRM_cantidadDeuda"/></log>
		</block>
		
		<field name="answer"> 
		
			<!-- con el siguiente prompt se prueba que se pasa correctamente el parámetro al subdialogo -->
			<prompt>
				Su cantidad de deuda actual es: <value expr="cantidadDeuda_actual"/>, ¿verdad?
				Si es así pulse 1, si no pulse 0. 
			</prompt>		
			
			<grammar mode="dtmf" src="builtin:dtmf/digits?length=1"/>	
			
			
			<filled>

		      <log label="TRAZAS"> valor answer <value expr="answer"/></log>
		      
		      <if cond="answer=='1'">
		        <prompt>Perfecto. Salimos del subdiálogo entonces.</prompt>
		      <else/>
				<prompt>¿No? Pues es el valor pasado al subdiálogo.</prompt>
		      </if>
		      
		      <assign name="SUB_codigoRetorno" expr="'OK'"/>
		      <return namelist="SUB_codigoRetorno"/>
		      
		    </filled>
			
		</field>
	</form>
</vxml>
