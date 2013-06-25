<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

	<script> 
      <![CDATA[ 
          function GetData(d, t)  {        
            return (d.getElementsByTagName(t).item(0).firstChild.data);	
			}  
      ]]> 
    </script>

	<form>
		<block>
			<var name="dataTestVar" expr="'prueba correcta'"/>
			<prompt> Primero, usamos el data para ejecutar un servlet. </prompt>
			<data name="servlet" src="dataTestServlet" namelist="dataTestVar"/>
		</block>
		
		<block>
			<prompt> Ahora, lo usamos para leer un archivo xml y reproducir su información.</prompt>
       		<data name="MyData" src="Resources/xml/MyData.xml"/> 
      		<assign name="document.MyData" expr="MyData.documentElement"/> 
      		<prompt> 
        		Los valores del xml son: <value expr="GetData(MyData, 'child1')"/>. 
       			<value expr="GetData(MyData, 'child2')"/>. 
        		<value expr="GetData(MyData, 'child3')"/>. 
        		<value expr="GetData(MyData, 'child4')"/>. 
        		y <value expr="GetData(MyData, 'child5')"/>. 
      		</prompt>
      		
      		<if cond="fromV21Tests">
      			<assign name="fromV21Tests" expr="false"/>
      			<goto next="Version21Tests/version21TestsMenu.jsp"/>      		
      		<else/>
      			<goto next="FlowTests/flowTestsMenu.jsp"/>
      		</if> 
      		
 		</block>
	
	</form>

</vxml>