Proyecto POCsVXML.

Contiene una serie de pruebas de concepto de VXML probadas básicamente en VXI/Verbio.

La página Tests/inicio.jsp es el root de la aplicación y contiene un menú con los tipos de pruebas. 
De ese menú, se puede navegar a otros que agrupan las pruebas por tipos.
Todas las rutas especificadas en las páginas parten de la url base: http://<%= request.getServerName() %>:<%= request.getServerPort() + "/POCsVXML/Tests/
En la carpeta Resources se encuentran gramáticas, audios, javascripts y xml usados en las pruebas.
Todas las páginas tienen como idioma "es-ES".
Los audios tienen el formato necesario para VXI: 8kHz 16-bit (PCM) mono.
Verbio solo soporta gramáticas ABNF.


Estructura de la aplicación:

1. Locuciones:
	1.1. TTS Simple.
	1.2. TTS Backup.
	1.3. Audio local.
	1.4. Audio remoto.
	1.5. Propiedades.

2. Inputs:
	2.1. Gramática DTMF inline SRGS.
	2.2. Gramática DTMF inline GRXML.
	2.3. Gramática ASR inline SRGS.
	2.4. Gramática ASR inline GRXML.
	2.5. Gramática ASR externa SRGS.
	2.6. Gramática ASR externa GRXML.
	2.7. Varias gramáticas ASR externas SRGS.
	2.8. Tag menu.

3. Transferencias:
	3.1. Transferencia ciega.
	3.2. Transferencia consultada.
	3.3. Transferencia bridge.

4. Grabaciones:
	4.1. Record.
	4.2. Record con almacenamiento (No funciona actualmente. Faltan librerías necesarias en el proyecto).
	4.3. Record utterance.
	
5. Variables telefónicas.

6. Navegación:
	6.1. Blocks.
	6.2. Submit.
	6.3. Eventos.
	6.4. Data.
	6.5. Script.
	6.6. Goto a form específico.
	6.7. Subdialog.
	6.8. Eventos tras cuelgue.
	
7. Version 2.1. de VXML.
	7.1. Data.
	7.2. Foreach.
	7.3. Transferencia consultada.
	7.4. Referencia dinámica a grammar (atributo srcexpr en grammar).
	7.5. Referencia dinámica a script (atributo srcexpr en script).
	7.6. Mark.
	7.7. Atributo namelist en el disconnect.
	7.8. Recordutterance.

8. Logs.

9. Otros.
	9.1. Fetchaudio.
	9.2. Variables duplicadas.