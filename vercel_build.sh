#!/bin/bash

set -e  # Stop on first error

echo "📦 Clonage de Flutter..."
git clone https://github.com/flutter/flutter.git -b stable

echo "🔧 Ajout de Flutter au PATH..."
export PATH="$PATH:`pwd`/flutter/bin"

echo "🔍 Vérification installation Flutter..."
flutter doctor

echo "🌐 Activation du support Web..."
flutter config --enable-web

echo "📦 Récupération des dépendances..."
flutter pub get

echo "🏗️ Construction du projet Web..."
flutter build web
