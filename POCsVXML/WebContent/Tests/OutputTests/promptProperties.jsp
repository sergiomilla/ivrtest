<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  > 

<form>

	<block>
		<prompt>Primero, vamos a probar el bargein.</prompt>
		<prompt bargein="false">Este prompt no se puede parar. Así que vas a tener que escucharlo entero.</prompt>
		<prompt bargein="true">Sin embargo, este si que lo vas a poder parar cuando quieras. ¿Sigues todavía escuchándome?</prompt>
		
		<prompt>Ahora vamos a probar el language.</prompt>
		<!-- El idioma tiene que estar disponible en el entorno donde probemos. -->
		<prompt xml:lang="en-GB">This prompt is in english.</prompt>

		<prompt cond="true">Este prompt se reproduce porque su atributo cond está seteado a true.</prompt>
		<prompt cond="false">Este prompt no debería de reproducirse porque su atributo cond está seteado a false.</prompt>
	</block>
		<field name="menuCountTimeout">
			
			<grammar mode="dtmf" src="builtin:dtmf/digits?length=1"/>
			
			<prompt count="1" timeout="10s">Probando el count y el timeout. Primer intento. Espere 10 segundos.</prompt>
			<prompt count="2" timeout="10s">Probando el count y el timeout. Segundo intento. Espere 10 segundos</prompt>
			<prompt count="3" timeout="10s">Probando el count y el timeout. Tercer intento. Pulse cualquier tecla.</prompt>
			 
			<filled>				
				<prompt>Probado.</prompt>
				<goto next="OutputTests/outputTestsMenu.jsp"/>
				
			</filled>
		</field>		
		
</form>

</vxml>