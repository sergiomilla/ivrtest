<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >


<form id="start">
  
  <field name="answer">
  
  	<property name="inputmodes" value="voice"/>
  	 
     <noinput> 
    	<prompt> No he escuchado nada. Que prefieres vainilla, chocolate o fresa? </prompt>
    </noinput>
    <nomatch>
    	<prompt> No te he entendido. Que prefieres vainilla, chocolate o fresa?  </prompt>
    </nomatch>

    <prompt> Hola, que sabor de helado prefieres? vainilla, chocolate o fresa? </prompt>
    
	<grammar mode="voice" type="application/srgs">
                  #ABNF 1.0
                  root $options;
                  $options = vainilla | chocolate | fresa;
	</grammar>
   
   <filled>
      <log> valor answer <value expr="answer"/></log>
      
      <if cond="answer=='fresa'">
	      <prompt>Fresa? Yo también.</prompt>
      <else/>
	      <prompt>Pues yo prefiero de fresa.</prompt>
      </if>
		<goto next="InputTests/inputTestsMenu.jsp"/>		
    </filled>
  </field>

</form>

</vxml>
