# Hello Wolrd Flutter Movies

### App de exemplo Flutter utilizando Clean Architecture

Padrão Clean
Consumo de API the movies db
Native SplashScreen
Material3
Dio http
Validação de Form
Temas Light Mode & Dark Mode
GetIt DI
Mock server  de autenticação

Instalar servidor mock

Primeiro passo: Instalação do Node.JS  
Entre no site nodejs.org e baixe a versão mais recente!

O instalador já vai fazer tudo para você, só preste bem atenção para ativar a instalação do Chocolatey.

Node instalado, é só rodar:

node -- version para descobrimos a versão do próprio node;  
npm --version para descobrimos a versão do Instalador de Módulos do Node, o NPM, e é ele que vamos usar.

Segundo passo: Instalação do JSON Server

npm install -g json-server-auth


Primeiro, crie na raiz do seu projeto Flutter uma pasta chamada server.


01 Dentro dessa pasta Crie o arquivo mock_api.json  
com o seguinte conteudo:

{  
"mockedapi": {  
"content": "Hello Mocked API world !!"  
},  
"users": [

]  
}

02 Crie o arquivo routes.json  com o seguinte conteudo

{  
"users" : 600  
}

03 Rode o comando:

json-server-auth  --watch --host [SEWU_IP_LOCAL] mock_api.json -r routes.json

04 Abra o Postman


Crie um chamada POST com a url http://[SEWU_IP_LOCAL]:3000/register

Coloque o body como JSON

E adicione o payload conforme seu objeto USER

{ "email": "jonas@gmail.com", "password": "abc123", "name": "Jonas Abdul",      "photoUrl":""  
}  
Apenas o campo email e password são fixos
Pois o serviço usa esse payload  de autenticacao
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


05 Abra o Postman

Crie um chamada POST com a url http://SEWU_IP_LOCAL]:3000/login

Coloque o body como JSON

{ "email": "jonas@gmail.com", "password": "abc123" }

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

TODO
LOGIN
analytics
Dialogs quando erro  
Sucesso Navegar tela Home  
  
 