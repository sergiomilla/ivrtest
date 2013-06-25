<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

<form>
  <block>
    <prompt>Lanzamos nuestro propio evento.</prompt>
  </block>
  <block>
    <throw event="myEvent"/>
  </block>
  <catch event="myEvent">
    <prompt>Recogemos nuestro propio evento con éxito.</prompt>
    <goto next="FlowTests/flowTestsMenu.jsp"/>
  </catch>
</form>

</vxml>