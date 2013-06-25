<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

<var name="srgsGrammarPath" expr="'Resources/Gramaticas/gramatica_menu.bnf'"/>

<form id="start">


  <field name="answer">

	<property name="inputmodes" value="voice"/>
	
	<prompt>En esta prueba la gramática está referenciada dinámicamente.</prompt>

    <prompt> Hola, qué desea? Hipótecas, saldo o hablar con un agente. </prompt>
    
 	<noinput>  
    	<prompt> No he escuchado nada. Diga hipotecas, saldo o agente. </prompt>   
    </noinput>
    
    <nomatch> 	
    	<prompt> No te he entendido. Diga hipotecas, saldo o agente. </prompt>    
    </nomatch>

	<grammar mode="voice" srcexpr="srgsGrammarPath" />

    <filled>
		<prompt bargein="false"> 
			Has seleccionado <value expr="answer"/>
		</prompt>
		<goto next="Version21Tests/version21TestsMenu.jsp"/>		
    </filled>
  </field>

</form>

</vxml>
