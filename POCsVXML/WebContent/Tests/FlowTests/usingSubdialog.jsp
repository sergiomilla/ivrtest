<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<var name="SUB_codigoRetorno" expr="''"/>
	
	<form>
	
		<block>
		  <prompt>A continuación, hacemos uso del subdialog.</prompt>
		</block>
		
		<!-- Esta es la llamada al subdialogo subdialogPrueba -->
		<subdialog name="subdialogPrueba" src="FlowTests/subdialog.jsp">
			<param name="PRM_cantidadDeuda" expr="10000"/>
		
			<filled>
				<!-- Asignamos a nuestra variable local de retorno, lo que devuelva el subdialogo -->
				<assign name="SUB_codigoRetorno" expr="subdialogPrueba.SUB_codigoRetorno"/>
				<log> Codigo retorno: <value expr="SUB_codigoRetorno"/></log>
				<assign name="PRM_codigoRetorno" expr="SUB_codigoRetorno"/>
				<log> PRM_codigoRetorno <value expr="PRM_codigoRetorno"/></log>

				<if cond="SUB_codigoRetorno=='OK'">
					<prompt>Volvemos del subdialog.</prompt>
					<goto next="FlowTests/flowTestsMenu.jsp"/>
				<elseif cond="SUB_codigoRetorno=='CUELGUE'"/>
					<goto next="finServicio.jsp"/>
				<else/>
					<goto next="finServicio.jsp"/>
				</if>

			</filled>
		
		</subdialog>

	</form>
</vxml>