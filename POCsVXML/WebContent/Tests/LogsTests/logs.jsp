<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

<form>
	<block>
	
		<var name="pruebaVar" expr="'oeoe'"/>
		<prompt>Vamos a probar distintos tipos de logs. Revisa el fichero de logs para comprobar que es correcto</prompt>
		<log>Trazas - log sin atributos.</log>
		<log>Trazas - log sin atributos, pero con una variable con valor: <value expr="pruebaVar"/></log>
		<log label="TRAZAS"> log haciendo uso del atributo label</log>
		<log expr="'TRAZAS - log haciendo uso del atributo expr'"/>
		<log label="TRAZAS" expr="'log haciendo uso del atributo expr y de label'"/>
 		<goto next="inicio.jsp"/>
	
	</block>

</form>
</vxml>