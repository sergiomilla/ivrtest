<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >
  
	<form>
		<var name="varDuplicada" expr="'1'"/>
		<block>
			<prompt>Valor de la variable duplicada: <value expr="varDuplicada"/></prompt>
		</block>
		<var name="varDuplicada" expr="'2'"/>
		<block>
			<prompt>Valor de la variable duplicada: <value expr="varDuplicada"/></prompt>
			<goto next="OtherTests/otherTestsMenu.jsp"/> 				
		</block>

	</form>

</vxml>