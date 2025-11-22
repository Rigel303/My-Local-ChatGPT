# Troubleshooting – Problemas Comunes

## ❌ WebUI no carga
- Verifica contenedores: docker ps
- Reinicia desde: 

./scripts/stop.sh
./scripts/start.sh

## ❌ Ollama aparece como "unhealthy"
- Puede ser modelo muy pesado
- Solución: usar Phi-3 o Phi-4-mini

## ❌ No funciona GPU
- Ejecuta: docker run --rm --gpus all nvidia/cuda:12.2.0-base nvidia-smi

## ❌ No inicia por puertos ocupados
Cambiar puertos en `docker-compose.yml`.




