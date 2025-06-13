Projeto de automação de testes mobile utilizando Robot Framework, Appium e integração com API Node.js para cadastro de tarefas no app MarkX.

Sumário

Descrição
Instalação
Uso
Estrutura do Projeto
Testes
Contribuição
Autores
Licença
Status do Projeto


Descrição
Este projeto automatiza testes de interface mobile para o aplicativo MarkX, focando no cadastro e validação de tarefas. Utiliza Robot Framework, Appium e uma API Node.js para manipulação dos dados de tarefas.

Instalação
Pré-requisitos:

Node.js (para API)
Python 3.11+
Appium 2.x
Android Emulator configurado

Passos:


Clone o repositório:

git clone https://gitlab.com/helenobordignon/qa-teste-automatizado-mobile-robot-app-markx.git
cd qa-teste-automatizado-mobile-robot-app-markx




Instale as dependências da API (dentro da pasta api):

cd api
npm install




Inicie a API:

npm start




Instale as dependências do Robot Framework:

pip install -r requirements.txt




Inicie o Appium:

appium




Execute os testes:

robot -d resultados testes/





Uso
Os testes estão na pasta tests/ e os resultados serão salvos na pasta results/. O arquivo de configuração do Appium está em config/appium_config.json.

Estrutura do Projeto

.
├── api
│   ├── node_modules
│   ├── package.json
│   ├── package-lock.json
│   └── server.js
├── resources
│   └── screens
├── results
├── tests
└── README.md



Testes
Os testes são escritos em Robot Framework e estão localizados na pasta tests. Recursos como palavras-chave e variáveis estão em resources/screens.

Contribuição
Contribuições são bem-vindas! Por favor, siga estas etapas:

Faça um fork deste repositório.
Crie uma nova branch: git checkout -b minha-contribuicao

Faça suas alterações e commit: git commit -m 'Minha contribuição'

Envie para o repositório remoto: git push origin minha-contribuicao

Abra um Pull Request


Autores


Heleno Bordignon - QA Automation - helenobordignon



Licença
Este projeto está licenciado sob a Licença MIT - veja o arquivo LICENSE para detalhes.

Status do Projeto
O desenvolvimento deste projeto está ativo. Sinta-se à vontade para contribuir ou sugerir melhorias.
