#!/bin/bash

# Função para verificar se apktool está instalado
verificar_apktool() {
    if ! command -v apktool >/dev/null 2>&1; then
        echo "❌ apktool não encontrado. Instale com:"
        echo "   sudo apt install apktool  # Linux/Debian/Ubuntu"
        echo "ou baixe do site oficial: https://ibotpeaches.github.io/Apktool/"
        exit 1
    fi
}

# Função para extrair informações do APK
extrair_appinfo() {
    APK_PATH="$1"

    if [[ ! -f "$APK_PATH" ]]; then
        echo "❌ Arquivo APK não encontrado em $APK_PATH"
        exit 1
    fi

    # Criar pasta temporária para descompilar
    TMP_DIR=$(mktemp -d)
    echo "Descompilando APK em $TMP_DIR ..."
    apktool d -f "$APK_PATH" -o "$TMP_DIR" >/dev/null 2>&1

    MANIFEST="$TMP_DIR/AndroidManifest.xml"

    if [[ ! -f "$MANIFEST" ]]; then
        echo "❌ AndroidManifest.xml não encontrado!"
        exit 1
    fi

    # Extrair appId (package)
    APP_ID=$(grep -oP 'package="[^"]+"' "$MANIFEST" | head -n1 | cut -d'"' -f2)

    # Extrair MainActivity
    MAIN_ACTIVITY=$(grep -oP 'android:name="[^"]+"' "$MANIFEST" | grep -i "MainActivity" | head -n1 | cut -d'"' -f2)

    # Exibir resultados
    echo "========================================="
    echo "✅ APK: $APK_PATH"
    echo "📦 App ID (package name): $APP_ID"
    echo "🚀 Main Activity: $MAIN_ACTIVITY"
    echo "========================================="

    # Limpar pasta temporária
    rm -rf "$TMP_DIR"
}

# ======= Script principal =======

if [[ $# -ne 1 ]]; then
    echo "Uso: $0 caminho/para/app.apk"
    exit 1
fi

APK="$1"

verificar_apktool
extrair_appinfo "$APK"
