README - Lookfy Local Setup (Detallhado)

1) Descompacte e entre na pasta:
   unzip lookfy_fastapi_repo.zip -d lookfy_fastapi_repo
   cd lookfy_fastapi_repo

2) Crie venv e instale:
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt

3) Configure .env (arquivo já presente). Edite SECRET_KEY para produção.

4) Rode:
   uvicorn app.main:app --reload

5) Testes com Postman:
   - Importe lookfy_postman_collection_updated.json
   - Use request 'Login (save token)' para popular variável environment 'access_token' automaticamente.
   - Execute sequência: Signup -> Login (save token) -> POST /items (upload) -> POST /looks/generate -> POST /looks -> POST /planner

6) Frontend mínimo:
   - Abra frontend_minimal/index.html no navegador e use a API base URL local (http://127.0.0.1:8000).
