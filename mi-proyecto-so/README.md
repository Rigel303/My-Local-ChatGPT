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

![image demo](https://github.com/Rigel303/My-Local-ChatGPT/blob/f3c64c4bac423b165f451e23c638d181f3da435a/mi-proyecto-so/demo/screenshot1.jpeg)
![video demo]()


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

## Autores

Proyecto creado por Samuel Yubert, Gabriela Paco y Christ Salva
Curso: Sistemas Operativos



