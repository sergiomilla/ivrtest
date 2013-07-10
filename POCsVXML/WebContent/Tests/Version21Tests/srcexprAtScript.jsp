<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

  <var name="scripts_baseuri" expr="'Resources/js/'"/>

  <form>
	
	<var name="result"/>
	<block>
		<prompt>Cargamos un archivo script externo, referenciándolo dinámicamente y lo utilizamos para hacer la suma de uno más uno.</prompt>
		<script srcexpr="scripts_baseuri + 'add2nums.js'"/>
		<assign name="result" expr="add2nums(1,1)"/>
		<prompt>El resultado es: <value expr="result"/>.</prompt>
		<goto next="Version21Tests/version21TestsMenu.jsp"/>
	</block>
    
  </form>
</vxml>