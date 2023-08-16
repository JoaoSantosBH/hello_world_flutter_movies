

# Hello Wolrd Flutter Movies

### App de exemplo Flutter utilizando Clean Architecture


- Padrão Clean
- Consumo de API the movies db
- Native SplashScreen
- Material3
- Dio http
- Validação de Form
- Temas Light Mode & Dark Mode
- GetIt DI
- JsonAuth  server  de autenticação

![Splash](img/splash.png)  
![Login](img/login.png)  
![Home](img/home.png)  
![Details](img/details.png)

Instruções para instalar servidor mock JsonAuth

## **Primeiro passo:**

Instalação do Node.JS      
Entre no site nodejs.org e baixe a versão mais recente!    
O instalador já vai fazer tudo para você, só preste bem atenção para ativar a instalação do Chocolatey.

Rode os comandos:    
`node -- version` (para descobrimos a versão do próprio node)      
`npm --version` (para descobrimos a versão do Instalador de Módulos do Node )


## **Segundo passo:**

Instalação do JSON Server


    npm install -g json-server-auth




01 - Crie na raiz do seu projeto Flutter uma pasta chamada **/server**.


02 - Dentro dessa pasta Crie o arquivo **mock_api.json** com o seguinte conteudo:


    {  
    "mockedapi":{  
    "content":"Hello Mocked API world !!"  
    },  
    "users":[]  
    }  


03 - Crie o arquivo **routes.json** com o seguinte conteudo  :


    {      
    "users" : 600      
    }  


04 - Rode o comando:


    json-server-auth  --watch --host [SEU_IP_LOCAL] mock_api.json -r routes.json


## **Terceiro passo:**

05 - Abra o Postman

Crie um chamada POST com a url

    http://[SEU_IP_LOCAL]:3000/register


Coloque o body como JSON

E adicione o payload conforme seu objeto USER


    {  
    "email": "jonas@gmail.com", "password": "abc123", "name": "Jonas Abdul",      "photoUrl":""      
    }      

Os campos email e password são fixos    
Pois o serviço usa esse payload  de autenticação    
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



06 Abra o Postman

Crie um chamada POST com a url

    http://[SEU_IP_LOCAL]:3000/login


Coloque o body como JSON


    {  
    "email": "jonas@gmail.com", "password": "abc123"  
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


Após criados os usuários você vera que agora seu arquivo estará assim:



    {  
      "mockedapi": {  
      "content": "Hello Mocked API world !!"  
      },  
      "users": [  
      {  
      "email": "jomar@gmail.com",  
          "password": "$2a$10$5KRgSRETN1GZDSvHXhQ8buQ9T1VQDsNGmdyZCM/TdhqFrOY2x0LAa",  
          "nome": "Jomar Seixas",  
          "urlFoto": "https://unsplash.com/photos/qXhgPJHnDeU",  
          "id": 1  
      },  
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
analytics    
Dialogs quando erro      
Sucesso Navegar tela Home  
Banco de dados favorito  
Tesstes