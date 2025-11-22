## Versión en Mermaid ##


/*
flowchart LR
    subgraph Host ["Host / Sistema Operativo"]
        subgraph Docker
            Ollama["📦 Contenedor OLLAMA
            Puerto: 11434
            Función: Motor LLM"]

            WebUI["📦 Contenedor OPEN WEBUI
            Puerto: 3000 -> 8080
            Función: Interfaz gráfica"]

            VolumeData["💾 Volumen compartido
            /root/.ollama"]
        end
    end

    WebUI <---> Ollama
    Ollama --- VolumeData
*/

---

## Versión ASCII


+-------------------------------------------------------------+
|                  Host / Sistema Operativo                   |
|                                                             |
|   +-----------------------------------------------------+   |
|   |                      DOCKER                        |   |
|   |                                                     |   |
|   |   +------------------+      HTTP 11434              |   |
|   |   |  OLLAMA          | <------------------------+   |   |
|   |   |  Motor LLM       |                          |   |   |
|   |   +------------------+                          |   |   |
|   |            |   Volumen                           |   |   |
|   |            v                                     |   |   |
|   |   +------------------+      HTTP 3000->8080      |   |   |
|   |   | OPEN WEBUI       | ------------------------> +   |   |
|   |   | Interfaz Web     |                              |   |
|   |   +------------------+                              |   |
|   +-----------------------------------------------------+   |
|                                                             |
+-------------------------------------------------------------+

---

## Versión para herramientas UML

@startuml

node "Host / Sistema Operativo" {
    node "Docker" {
        component "Ollama\nPuerto: 11434\nMotor LLM" as OLLAMA
        component "Open WebUI\nPuerto: 3000->8080\nFrontend" as WEBUI
        database "Volumen:\n/root/.ollama" as VOL
    }
}

WEBUI --> OLLAMA : HTTP Request\n(LLM API)
OLLAMA --> VOL : Lectura/Escritura modelos

@enduml

---

## Arquitectura del proyecto para Draw.io

**Copia todo el contenido y pégalo en Draw.io → File → Import from… → Clipboard.**


<mxfile host="app.diagrams.net" modified="2025-02-20T10:00:00.000Z" agent="5.0 (ChatGPT)" version="20.8.3" editor="diagramly" type="device">
  <diagram id="diagram1" name="Arquitectura">
    <mxGraphModel dx="1100" dy="700" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="850" pageHeight="1100" math="0" shadow="0">
      <root>
        <mxCell id="0"/>
        <mxCell id="1" parent="0"/>

        <!-- Host -->
        <mxCell id="host" value="Host / Sistema Operativo" style="rounded=1;whiteSpace=wrap;html=1;strokeWidth=1;align=center;fontSize=16;" vertex="1" parent="1">
          <mxGeometry x="40" y="40" width="760" height="420" as="geometry"/>
        </mxCell>

        <!-- Docker box -->
        <mxCell id="docker" value="Docker Engine" style="rounded=1;whiteSpace=wrap;html=1;strokeWidth=1;align=center;fontSize=14;fillColor=#f5f5f5;" vertex="1" parent="host">
          <mxGeometry x="30" y="40" width="700" height="350" as="geometry"/>
        </mxCell>

        <!-- Ollama -->
        <mxCell id="ollama" value="Ollama Container&#10;Puerto: 11434&#10;Motor LLM" style="rounded=1;whiteSpace=wrap;html=1;strokeWidth=1;align=center;fontSize=13;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="docker">
          <mxGeometry x="40" y="60" width="260" height="120" as="geometry"/>
        </mxCell>

        <!-- WebUI -->
        <mxCell id="webui" value="Open WebUI Container&#10;Puerto: 3000 → 8080&#10;Interfaz Web" style="rounded=1;whiteSpace=wrap;html=1;strokeWidth=1;align=center;fontSize=13;fillColor=#dae8fc;strokeColor=#6c8ebf;" vertex="1" parent="docker">
          <mxGeometry x="400" y="60" width="260" height="120" as="geometry"/>
        </mxCell>

        <!-- Volume -->
        <mxCell id="volume" value="Volumen Persistente&#10;/root/.ollama" style="rounded=1;whiteSpace=wrap;html=1;strokeWidth=1;align=center;fontSize=13;fillColor=#fff2cc;strokeColor=#d6b656;" vertex="1" parent="docker">
          <mxGeometry x="220" y="230" width="260" height="100" as="geometry"/>
        </mxCell>

        <!-- Connections -->
        <mxCell id="link1" edge="1" parent="docker" source="webui" target="ollama" style="endArrow=block;strokeWidth=1;fontSize=12;">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="0" y="0" as="targetPoint"/>
          </mxGeometry>
        </mxCell>

        <mxCell id="link2" edge="1" parent="docker" source="ollama" target="volume" style="endArrow=block;strokeWidth=1;fontSize=12;">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="0" y="0" as="targetPoint"/>
          </mxGeometry>
        </mxCell>

      </root>
    </mxGraphModel>
  </diagram>
</mxfile>









