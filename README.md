# Lookfy — Consultor de Estilo Masculino

Aplicativo Android Flutter para geração de looks masculinos personalizados, offline-first e pronto para distribuição.

## Setup Rápido

```sh
flutter pub get
./scripts/generate_keystore.sh
flutter build apk --release --target-platform android-arm,android-arm64,android-x64
adb install build/app/outputs/flutter-apk/app-release.apk
```

Para detalhes completos, leia o arquivo `build_instructions.md`.

## Estrutura do Projeto

- `lib/` — Código fonte Flutter
- `android/` — Configuração Android
- `assets/` — Catálogo inicial, imagens, ícones
- `test/` — Testes
- `scripts/` — Script para gerar keystore
- `.github/workflows/` — CI/CD
---

O código Flutter está pronto para Android. Para iOS, veja instruções [Flutter iOS](https://docs.flutter.dev/platform-integration/ios).
