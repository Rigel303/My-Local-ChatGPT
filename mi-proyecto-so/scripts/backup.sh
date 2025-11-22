#!/bin/bash
echo "📦 Realizando respaldo de modelos..."
mkdir -p backup

docker run --rm \
  -v mi-proyecto-so_ollama-data:/data:ro \
  -v $(pwd)/backup:/backup \
  alpine tar czvf /backup/models-backup.tar.gz /data

echo "✔ Respaldo completado: backup/models-backup.tar.gz"
