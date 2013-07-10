<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<form>
		

		<field name="libreta">
			<property name="inputmodes" value="voice" />
            <property name="recordutterance" value="true" />

			<prompt bargein="true">
				Dígame un numero del 0 al 9.
			</prompt>

			<grammar mode="voice" type="application/srgs" src="Resources/Gramaticas/numbers_voice.bnf" />


			<filled>
				<prompt>
					Hemos entendido que ha dicho
					<!-- <value expr="application.lastresult$.interpretation.out" /> -->
					<value expr="application.lastresult$.utterance" />
					. Exactamente nos ha dicho
                    <!-- <value expr="application.lastresult$.recording" />.-->
                    La grabación ha durado:
                     <value expr="application.lastresult$.recordingduration" /> milisegundos.
                    Y tiene un tamaño de: 
                     <value expr="application.lastresult$.recordingsize" /> bytes?.
                    
				</prompt>
			</filled>
		</field>
	</form>

</vxml>