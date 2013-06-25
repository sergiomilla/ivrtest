<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >
	
	<% Thread.sleep( 20 * 1000); %>
	<form>
		<block>
			<prompt>Se terminó la prueba.</prompt>
			<goto next="OtherTests/otherTestsMenu.jsp"/> 				
			
		</block>
	</form>
</vxml>