<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >


<form id="start">
  <catch event="error.unsupported.record">
    <prompt>La configuración actual no soporta la grabación de audio.</prompt>
	<goto next="inicio.jsp"/>
  </catch>
  
   <catch event="error.noresource">
    <prompt> Error noresource </prompt>
	<goto next="inicio.jsp"/>
  </catch>

  <record name="recording" beep="true" dtmfterm="true" maxtime="10s" modal="true" type="audio/x-wav">
	<prompt> Por favor, deje un mensaje después de la señal. </prompt>
    <noinput>
    	<prompt> No se ha grabado nada. </prompt>
	</noinput>
   <filled>
		<prompt>Ha grabado: <audio expr="recording"/></prompt>
	    <!-- <prompt>El tamaño de la grabación es <value expr="recording$.size"/> bytes.</prompt>
	    <prompt>La duración de la grabación es <value expr="recording$.duration"/> milisegundos.</prompt>
	    <if cond="recording$.termchar != undefined">
	      <prompt>La grabación fue interrumpida por la tecla DTMF. <value expr="recording$.termchar"/>.</prompt>
		<elseif cond="recording$.maxtime"/>
		   <prompt>La grabación fue interrumpida porque excedió el tiempo límite. </prompt>
		<else/>
			<prompt>La grabación ha terminado sin ninguna interrupción.</prompt>
		</if>-->
		<submit fetchhint="safe" next="RecordTests/saveMessage.jsp" 
		enctype="multipart/form-data" method="post" namelist="recording"/>
	</filled>
  </record>


</form>

</vxml>
