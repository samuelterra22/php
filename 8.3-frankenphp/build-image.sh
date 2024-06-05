#!/bin/bash

# Captura o tempo de início em segundos
start_time=$(date +%s)

# Definindo variáveis
DOCKER_USERNAME="samuelterra22"
DOCKER_IMAGE_NAME="php"
DOCKER_IMAGE_TAG="$(basename "$(pwd)")" # basename "$(pwd)" pega o nome do diretório atual e usa como tag da imagem Docker

# Construindo a imagem Docker
echo "Iniciando o build da imagem Docker..."
docker buildx build --platform linux/arm64 -t $DOCKER_USERNAME/$DOCKER_IMAGE_NAME:$DOCKER_IMAGE_TAG --no-cache --push .

# Captura o tempo de término em segundos
end_time=$(date +%s)

# Calcula o tempo de execução em segundos
execution_time=$((end_time - start_time))

# Converte segundos para minutos
execution_time_minutes=$(echo "scale=2; $execution_time / 60" | bc)

echo "Concluído!"
echo "Tempo de execução: $execution_time_minutes minutos"
