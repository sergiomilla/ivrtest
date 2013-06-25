<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

<form id="start">

  <field name="answer">
 
    <prompt> ¿Estás dormido? </prompt>
    <prompt> Pulsa 1 si lo estás, y 2 si no... </prompt>
    
    <noinput>
    	<prompt>
     	Eh, no te duermas!
     	</prompt>
    </noinput>
    <nomatch>
	    <prompt>
	     Pulsa 1 si es verdad y 2 si no lo es.
	    </prompt>
    </nomatch>
    
    <!-- TODO: Revisar que la gramática sea correcta -->    
    <grammar mode="dtmf" type="application/srgs+xml">
		<rule id="inlineGrxml">
			<one-of>
			  <item>1</item>
			  <item>2</item>
			  <item>3</item>
			  <item>4</item>
			  <item>5</item>
			  <item>6</item>
			  <item>7</item>
			  <item>0</item>
			</one-of>
	     </rule>
	</grammar>
    
   
    <filled>
    
      <log label="TRAZAS"> DTMF INLINE GRXML - Valor de answer: <value expr="answer"/></log>
      <log expr="'CONFIDENCE =' + answer$.confidence"/>
      <log expr="'INPUTMODE =' + answer$.inputmode"/>
      <log expr="'INTERPRETATION = ' + answer$.interpretation"/>
      <log expr="'UTTERANCE =' + answer$.utterance"/>  
      <log expr="'APLICACION LAST RESULT interpretation:  ' + application.lastresult$[0].interpretation"/>
      <log expr="'APLICACION LAST RESULT utterance: ' + application.lastresult$[0].utterance"/>
          
      <if cond="answer=='1'">
      	<prompt>Así que estás dormido. Yo también.</prompt>
      <else/>
	    <prompt>¿No estás dormido? Pues yo sí</prompt>
      </if>
      <goto next="InputTests/inputTestsMenu.jsp"/>		
      
    </filled>
  </field>
</form>

</vxml>
