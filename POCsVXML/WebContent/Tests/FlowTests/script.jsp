<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

<form>
  <var name="result"/>
  <block>
    <prompt>Cargamos un archivo script externo y lo utilizamos para hacer la suma de uno más uno.</prompt>
    <!-- Script que suma dos números. -->
    <script src="Resources/js/add2nums.js"/>
    <assign name="result" expr="add2nums(1,1)"/>
    <prompt>El resultado es: <value expr="result"/>.</prompt>
    <goto next="FlowTests/flowTestsMenu.jsp"/>
  </block>
</form>

</vxml>