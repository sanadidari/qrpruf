#!/bin/bash

# Installer Flutter
git clone https://github.com/flutter/flutter.git -b stable
export PATH="$PATH:`pwd`/flutter/bin"

# Vérifier l'installation
flutter doctor

# Activer Flutter Web
flutter config --enable-web

# Récupérer les dépendances
flutter pub get

# Builder le projet
flutter build web
