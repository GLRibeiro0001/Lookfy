#!/bin/bash
echo "Gerando keystore de exemplo para Lookfy (NÃO usar em produção!)"
keytool -genkey -v -keystore ./android/app/lookfy.keystore -alias lookfy-key-alias -keyalg RSA -keysize 2048 -validity 10000
echo "Keystore gerada em ./android/app/lookfy.keystore"
