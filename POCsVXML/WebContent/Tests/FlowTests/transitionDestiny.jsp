<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

<var name="pruebaVar" expr="'<%= request.getParameter("submitParam") %>'" />
<form id="submitForm">
  <block>
    <prompt>Submit realizado con éxito. El valor de la variable pasada utilizando el namelist es: <value expr="pruebaVar"/></prompt>
    <goto next="FlowTests/flowTestsMenu.jsp"/>
  </block>
</form>

<form id="gotoForm">
  <block>
    <prompt>Goto realizado con éxito.</prompt>
    <goto next="FlowTests/flowTestsMenu.jsp"/>
  </block>
</form>

</vxml>