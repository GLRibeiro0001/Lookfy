# Instruções detalhadas para build e assinatura de APK

## Gerando Keystore (Exemplo para desenvolvimento)

```sh
keytool -genkey -v -keystore ./android/app/lookfy.keystore -alias lookfy-key-alias -keyalg RSA -keysize 2048 -validity 10000
```

## Configurando build.gradle

Edite `android/app/build.gradle` conforme acima, inserindo os dados do keystore.

## Build APK multi-arch

```sh
flutter build apk --release --target-platform android-arm,android-arm64,android-x64
```

## Instalando APK

```sh
adb install build/app/outputs/flutter-apk/app-release.apk
```
