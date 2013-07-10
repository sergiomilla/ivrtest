<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="es-ES" xml:base="http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/" %>" application="inicio.jsp"  >

  <form>
    <block>
    <prompt>
     Esta variable indica el ID de la sesión o canal: <value expr="session.telephone.session"/>.
     Esta variable contiene el call ID o un parámetro de usuario asignado por el script Asterisk Extension: <value expr="session.telephone.id"/>.
     ANI: <value expr="session.telephone.ani"/>.
     DNIS: <value expr="session.telephone.dnis"/>.
    </prompt>
    <log label="TRAZAS"> 
	 session.telephone.session: <value expr="session.telephone.session"/>.
     session.telephone.id: <value expr="session.telephone.id"/>.
     session.telephone.ani: <value expr="session.telephone.ani"/>.
     session.telephone.dnis: <value expr="session.telephone.dnis"/>.
    </log>
    
    <prompt>
      Leemos ahora las variables haciendo uso de SSML.
      Esta variable indica el ID de la sesión o canal:
      <say-as interpret-as="digits">
            <value expr="session.telephone.session"/>
        </say-as>.
     Esta variable contiene el call ID o un parámetro de usuario asignado por el script Asterisk Extension:
        <say-as interpret-as="digits">
          <value expr="session.telephone.id"/>
        </say-as>.
      El ANI:
      	 <say-as interpret-as="telephone">
          <value expr="session.telephone.ani"/>
        </say-as>.
      El DNIS:
      	<say-as interpret-as="telephone">
          <value expr="session.telephone.dnis"/>
        </say-as>.
      </prompt>
      
	<goto next="inicio.jsp"/>
  </block>
  </form>

</vxml>