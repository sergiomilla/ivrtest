<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

<form>
  <var name="submitParam" expr="'namelist del submit probado'"/>
  <block>
    <prompt>A continuación, se intentará hacer un submit a otra página.</prompt>
    <submit next="FlowTests/transitionDestiny.jsp" method="post" namelist="submitParam"/>
  </block>
</form>


</vxml>