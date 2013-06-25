<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

<form id="start">

  <field name="answer">

	<property name="inputmodes" value="voice"/>

    <prompt> Hola, qué desea? Hipotecas, saldo, hablar con un agente o un número. </prompt>
    
 	<noinput>  
    	<prompt> No he escuchado nada. Diga hipotecas, saldo, agente o número. </prompt>   
    </noinput>
    
    <nomatch> 	
    	<prompt> No te he entendido. Diga hipotecas, saldo, agente o número. </prompt>    
    </nomatch>

	<grammar mode="voice" src="Resources/Gramaticas/gramatica_menu.bnf" />
	<grammar mode="voice" src="Resources/Gramaticas/numbers_voice.bnf" />


    <filled>
		<prompt bargein="false"> 
			Has seleccionado <value expr="answer"/>
		</prompt>
		<goto next="InputTests/inputTestsMenu.jsp"/>		

    </filled>
  </field>

</form>

</vxml>
