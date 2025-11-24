# Proyecto: My Local ChatGPT – Proyecto de Sistemas Operativos

Este proyecto implementa un entorno local de inteligencia artificial utilizando **Ollama** (servidor de modelos LLM) y **Open WebUI** (interfaz web) como interfaz gráfica.  

Permite ejecutar modelos ligeros como **Phi-3**, **Phi-4-mini**, **Gemma**, entre otros, incluso en equipos con recursos limitados.

---
# 🧩 ¿Qué problema resuelve?

Muchos modelos de IA requieren internet, servidores externos o hardware costoso.  
Este proyecto permite:

- Ejecutar IA **local**, sin depender de servicios externos.
- Probar modelos ligeros incluso si la GPU es limitada.
- Crear un entorno reproducible usando contenedores.
- Facilitar demostraciones y entornos educativos para SO, virtualización y contenedores.

Es ideal para estudiantes, docentes o desarrolladores que necesitan un sistema de IA portátil y replicable.

---

## 🚀 Descripcion del Proyecto

- Correr modelos ligeros (Phi-3, Phi-4-mini, Gemma, etc.)
- Usar GPU NVIDIA si está disponible
- Interfaz Web accesible en: **http://localhost:3000/**
- Scripts automatizados (`start`, `stop`, `backup`)
- Volúmenes persistentes
- Red personalizada
- Documentación completa

---
# 🛠 Requisitos Previos

### **Software necesario**
- **Docker** (o Podman)
- **Docker Compose**
- **NVIDIA GPU (opcional)**  
  - Con drivers y `nvidia-container-toolkit` instalados
- **Git** (opcional)

Verificar GPU con:

docker run --rm --gpus all nvidia/cuda:12.3.2-base-ubuntu22.04 nvidia-smi

---

## 📦 Servicios

| Servicio        | Función |
|----------------|---------|
| **Ollama**     | Ejecuta modelos LLM |
| **Open WebUI** | Interfaz web para conversar con el modelo |
| **Volúmenes**  | Persisten modelos y datos |

---
## Instrucciones de Instalación (paso a paso)

1. Clonar o descargar el proyecto

git clone <https://github.com/Rigel303/My-Local-ChatGPT/tree/febe22e33baf4b83c9fac3571cc7a9bba225571a><br/>
cd mi-proyecto-so

2. Asegurar permisos de scripts

chmod +x scripts/*.sh

3. Levantar el entorno

./scripts/start.sh

4. 🚀 ¿Cómo iniciar?

Abrir en el navegador:

👉 http://localhost:3000/

5. Descargar un modelo como ejemplo

docker exec -it ollama ollama pull phi3

o también puede descargar un modelo desde WebUI → Model Manager.

---

## Instrucciones de uso

1. Abrir WebUI

En: http://localhost:3000

2. Seleccionar un modelo

Ejemplo: phi3

3. Escribir una pregunta o comando

El sistema responderá usando el modelo descargado.

4. 🛑 ¿Cómo detener?

./scripts/stop.sh

5. 📦 Respaldar modelos

./scripts/backup.sh

El archivo aparecerá en:  
`backup/models-backup.tar.gz`

---

## 🖼 Evidencia del proyecto funcionando
### Screenshots

![alt text](https://github.com/Rigel303/My-Local-ChatGPT/blob/bb5b5455ea4e2c0083430ef10850a7743960306f/mi-proyecto-so/demo/screenshot1a.jpeg)

![alt text](https://github.com/Rigel303/My-Local-ChatGPT/blob/bb5b5455ea4e2c0083430ef10850a7743960306f/mi-proyecto-so/demo/screenshot1b.jpeg)

![alt text](https://github.com/Rigel303/My-Local-ChatGPT/blob/bb5b5455ea4e2c0083430ef10850a7743960306f/mi-proyecto-so/demo/screenshot1c.jpeg)

![alt text](https://github.com/Rigel303/My-Local-ChatGPT/blob/bb5b5455ea4e2c0083430ef10850a7743960306f/mi-proyecto-so/demo/screenshot1d.jpeg)

### Demo Video (Short Version)

[![Watch the video](https://github.com/Rigel303/My-Local-ChatGPT/blob/dcd8454ab0f30770eb799fff2f44d1b39f8029ca/mi-proyecto-so/demo/alt_video_image.png)](https://github.com/Rigel303/My-Local-ChatGPT/blob/eb399eb2e0864b17eae6f8bc1e589a53e3b5f754/mi-proyecto-so/demo/video-demo.mp4)


---

## Créditos y recursos utilizados
### Tecnologías

Ollama – Motor de modelos LLM
https://ollama.com

Open WebUI – Interfaz gráfica
https://github.com/open-webui/open-webui

Docker / Docker Compose

Modelos Phi-3 / Phi-4 (Microsoft)

Gemma (Google)

Ubuntu + CUDA (opcional para GPU)

### 📚 Documentación

- `docs/arquitectura.md`
- `docs/instalacion.md`
- `docs/troubleshooting.md`

## Reflexión grupal

El proyecto desarrollado me permitió aplicar directamente varios conceptos fundamentales de Sistemas Operativos, especialmente aquellos relacionados con procesos, manejo de recursos y aislamiento. Al trabajar con Docker, pude observar cómo cada contenedor no es una máquina independiente, sino un proceso del sistema host que está aislado mediante mecanismos del kernel como namespaces y cgroups. Esto refuerza lo visto en clase sobre cómo el SO crea y controla procesos, asignándoles identificadores, espacio de direcciones y recursos propios.

En términos de uso de recursos, el servicio que más demanda generó fue Ollama, ya que cargar y ejecutar un modelo de lenguaje implica un consumo elevado de CPU y memoria RAM. Esto me permitió entender de manera práctica cómo un sistema operativo distribuye y limita recursos entre procesos, y cómo una carga de trabajo intensiva puede afectar el rendimiento global. En contraste, el servicio WebUI utilizó menos recursos, actuando principalmente como intermediario mediante solicitudes HTTP, lo que refleja un uso más ligero de CPU, red y almacenamiento.

Uno de los aprendizajes más valiosos fue comprender el aislamiento que proveen los contenedores. Gracias a los namespaces, cada contenedor tiene su propio entorno, red virtual, árbol de procesos y sistema de archivos, aunque compartan el mismo kernel. Esto permite que los servicios funcionen de forma independiente: si uno falla o se reinicia, no afecta directamente al resto. Además, el uso de volúmenes me ayudó a diferenciar entre datos efímeros y datos persistentes, entendiendo cómo el almacenamiento puede ser separado del ciclo de vida de los procesos.

En conjunto, este proyecto mostró cómo los conceptos teóricos del curso se aplican en herramientas modernas y cómo el sistema operativo actúa como base esencial para la orquestación y aislamiento de aplicaciones contemporáneas.

## Autores

Proyecto creado por Samuel Yubert, Gabriela Paco y Christ Salva
Curso: Sistemas Operativos












