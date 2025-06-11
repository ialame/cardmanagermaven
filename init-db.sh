#!/bin/bash

echo "==========================================="
echo "Début de l'import de la base de données..."
echo "==========================================="

# Attendre que la base soit complètement démarrée
echo "Attente de la disponibilité de la base de données..."
until mysql -h dev-db -u ia -pfoufafou -e "SELECT 1" >/dev/null 2>&1; do
    echo "Base de données non disponible, attente de 5 secondes..."
    sleep 5
done

echo "Base de données disponible, début de l'import..."

# Import du fichier SQL avec gestion d'erreur
if mysql -h dev-db -u ia -pfoufafou dev < /data/pca.sql; then
    echo "==========================================="
    echo "✅ Import terminé avec succès !"
    echo "==========================================="
else
    echo "==========================================="
    echo "❌ Erreur lors de l'import !"
    echo "==========================================="
    exit 1
fi