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

Lookfy - Pacote Completo (Backend + Postman + OpenAPI + Frontend mínimo)

Conteúdo do pacote:
- lookfy_fastapi_repo.zip : Repositório backend (FastAPI + SQLite + JWT + Docker)
- lookfy_postman_collection_updated.json : Collection do Postman (com script para salvar token)
- openapi_from_yaml.json : OpenAPI exportado a partir do YAML
- postman_runner_data.csv : CSV com exemplos para Postman Runner
- frontend_minimal/ : Aplicação frontend estática (HTML/JS/CSS) para testar fluxo básico
- README_LOCAL_SETUP.md : Guia rápido para rodar localmente e testar endpoints

Instruções rápidas para rodar o backend localmente:

1) Descompacte lookfy_fastapi_repo.zip
   unzip lookfy_fastapi_repo.zip -d lookfy_fastapi_repo
   cd lookfy_fastapi_repo

2) (recomendado) Crie e ative um venv:
   python -m venv .venv
   source .venv/bin/activate   # mac/linux
   .venv\Scripts\activate    # windows

3) Instale dependências:
   pip install -r requirements.txt

4) Ajuste .env (opcional):
   SECRET_KEY=change-me-to-a-secure-random-string
   ALGORITHM=HS256
   ACCESS_TOKEN_EXPIRE_MINUTES=60
   DATABASE_URL=sqlite:///./data/db.sqlite

5) Rode o servidor:
   uvicorn app.main:app --reload

6) Acesse Swagger/UI: http://127.0.0.1:8000/docs
   (use a collection do Postman para testes automatizados)

Frontend mínimo:
- Abra frontend_minimal/index.html no navegador (ou sirva por um servidor estático).
- Preencha a URL base da API (ex: http://127.0.0.1:8000) e siga os passos: signup -> login -> copiar token -> colar token no campo do frontend -> gerar look.
