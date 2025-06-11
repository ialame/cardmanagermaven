#!/bin/bash

# Construire mason en premier
docker build -t mason -f mason/Dockerfile .

# Puis construire les autres services
docker compose build
docker compose up -d