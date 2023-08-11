# hello_world_flutter_movies

Movies Hello World

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
BlockProvider
Com BlocBuilder no componente que vai atualizar


192.168.0.181


Primeiro passo: Instalação do Node.JS

Entre no site nodejs.org e baixe a versão mais recente!

O instalador já vai fazer tudo para você, só preste bem atenção para ativar a instalação do Chocolatey.

Node instalado, é só rodar. Você pode usar:

node -- version para descobrimos a versão do próprio node;

npm --version para descobrimos a versão do Instalador de Módulos do Node, o NPM, e é ele que vamos usar.

Configurando o JSON Server



Segundo passo: Instalação do JSON Server

========
Instalando o JSON-Server Auth
========

npm install -g json-server-auth


Primeiro, crie na raiz do seu projeto Flutter uma pasta chamada server.
Depois, crie um arquivo db.json contendo o seguinte código:

Abra um terminal e rode: npm install -g json-server

json-server --watch --host 192.168.0.181 mock_api.json


01 Crie o arquivo mock_api.json
================================

{
"mockedapi": {
"content": "Hello Mocked API world !!"
},
"users": [

]
}

================================
02 Crie o arquivo routes.json
================================
{
"users" : 600
}

================================
03 Rode o comando:
================================
json-server-auth  --watch --host [SEWU_IP_LOCAL] mock_api.json -r routes.json

================================
04 Abra o Postman
================================


Crie um chamada POST com a url http://SEWU_IP_LOCAL]:3000/register

Coloque o body como JSON

E adicione o payload conform seu objeto USER

    {
      "email": "jonas@gmail.com",
      "password": "abc123",
      "name": "Jonas Abdul", 
      "photoUrl":""
    }

Apenas o campo email e password são fixo
Pois o serviço usa esse payload
Então sera necessario um mapeamento do atributo para seu tipo de objeto
No meu caso mapeio email para username

Resposta 201
{
"accessToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImpvbmFzQGdtYWlsLmNvbSIsImlhdCI6MTY5MTU5MTgzOSwiZXhwIjoxNjkxNTk1NDM5LCJzdWIiOiIyIn0.I0a1Uu73N-3CnG3149e5MbdcVJVC5fmuXnOx2vrykws",
"user": {
"email": "jonas@gmail.com",
"name": "Jonas Abdul",
"photoUrl": "",
"id": 2
}
}


================================
05 Abra o Postman
================================

Crie um chamada POST com a url http://SEWU_IP_LOCAL]:3000/login

Coloque o body como JSON

    {
      "email": "jonas@gmail.com",
      "password": "abc123"
    }


Resposta 200

{
"accessToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImpvbmFzQGdtYWlsLmNvbSIsImlhdCI6MTY5MTU5MTk0NiwiZXhwIjoxNjkxNTk1NTQ2LCJzdWIiOiIyIn0.NvG-2HSEF7vnDJCn50hiymGqYqvkz6yHlxi8CjgkbPw",
"user": {
"email": "jonas@gmail.com",
"name": "Jonas Abdul",
"photoUrl": "",
"id": 2
}
}


Vc vera que agora seu arquivo estará assim


{
"mockedapi": {
"content": "Hello Mocked API world !!"
},
"users": [
{
"email": "jonas@gmail.com",
"password": "$2a$10$AAVpAoS6qyfbexin9vrSJee9oLWp.ngPzJnghZZteRLIbnX2Z179S",
"name": "Jonas Abdul",
"photoUrl": "",
"id": 2
}
]
}


LOGIN
===========================
Colocar cores Figma

Dialogs quando erro
Sucesso Navegar tela Home


===========================
HOME
===========================


21900
500 multa
1000 ar
-________

20000
19000









