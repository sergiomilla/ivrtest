<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<form>
		<block>
			<prompt> A continuación, acabará la llamada porque hacemos uso del tag disconnect con namelist como atributo.</prompt>
			<disconnect namelist="PRM_codigoRetorno"/>
		</block>
	
	</form>
</vxml>