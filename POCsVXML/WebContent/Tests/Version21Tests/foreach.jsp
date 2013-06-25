<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

<form> 
	<!-- Pruebas para validar el tag foreach -->
	<block> 
		<prompt>Primero vamos a utilizar el for each para reproducir un array de juegos y dejar trazas con log.</prompt>
		
		<script> 
		 var arrayGames = ["duke nukem forever", "half life 2", "doom 3", "shadow warrior 2"]; 
		</script> 
		
		<prompt>Estos son los juegos de la temporada:<break/></prompt>
		
		<foreach item="games" array="arrayGames"> 	
            <log label="TRAZAS">Juego: <value expr="games"/></log>
		 	<prompt><value expr="games"/> </prompt>
		</foreach> 
	  </block>
	  
	  <block> 
		<prompt>Ahora, reproducimos el array de juegos pero haciendo uso de otras variables.</prompt>
		
		<script> 
		 var arrayGames = ["duke nukem forever", "half life 2", "doom 3", "shadow warrior 2"]; 
		</script> 
		
		<prompt>Estos son los juegos de la temporada:<break/></prompt>
		
		<foreach item="games" array="arrayGames"> 	
        	<var name="pruebaVar" expr="''"/>
        	<assign name="pruebaVar" expr="games"/>
        	<prompt><value expr="pruebaVar"/> </prompt>
		</foreach> 
	  </block>
	  
	  <block> 
		<prompt>
		Ahora, vamos a probar que sea posible poner dentro del for each los siguientes tags:
		if, script, audio, data y goto.
		</prompt>
		
		<script> 
		 var arrayGames = ["duke nukem forever", "half life 2", "doom 3", "shadow warrior 2"]; 
		</script> 
		
		<prompt>Estos son los juegos de la temporada:<break/></prompt>
		
		<foreach item="games" array="arrayGames"> 	
			<if cond="games=='half life 2'">
           		<prompt> Es el half life 2 </prompt>
           	<else/>
           		<prompt> No es el half life 2 </prompt>
         	</if>
 
 			<script src="Resources/js/MyScript.js"/>
        	<prompt><value expr="ruleFunction()"/> </prompt>
 
 			<data name="servlet" src="dataTestServlet"/>
 			
 			<audio src="Resources/Audios/SAN-RBS-WELCOME-A.wav"/>
 			
 			<goto next="Version21Tests/version21TestsMenu.jsp"/>
 			
		</foreach> 
	  </block> 	 	 	 	  
</form>

</vxml>