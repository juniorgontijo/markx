Yodapp Robot
Automação de testes para o aplicativo Yodapp utilizando Robot Framework e Appium.

Pré-requisitos
Certifique-se de ter os seguintes itens instalados:

Python 3.8+
Robot Framework
Appium

Node.js (necessário para o Appium)
Emulador Android ou dispositivo físico configurado


Instalação


Clone o repositório:

git clone https://gitlab.com/helenobordignon/yodapp-robot.git
cd yodapp-robot




Instale as dependências do Python:

pip install -r requirements.txt




Certifique-se de que o Appium Server está em execução:

appium




Configure o emulador ou dispositivo Android com as permissões necessárias.



Estrutura do Projeto


tests/: Contém os arquivos de teste em Robot Framework.

resources/: Contém recursos reutilizáveis, como keywords customizadas.

app/: Contém o APK do aplicativo Yodapp para testes.


Executando os Testes
Para executar os testes, use o seguinte comando:

robot -d results tests/




-d results: Define o diretório onde os relatórios e logs serão salvos.

tests/: Diretório contendo os arquivos de teste.


Teste de Exemplo
O teste click.robot realiza as seguintes ações:

Abre o aplicativo Yodapp.
Aguarda a página inicial carregar.
Realiza cliques em elementos específicos, como o menu hambúrguer e itens do menu.


Contribuindo
Contribuições são bem-vindas! Siga os passos abaixo:

Faça um fork do repositório.
Crie uma branch para sua feature ou correção de bug:

git checkout -b minha-feature



Faça commit das suas alterações:

git commit -m "Descrição da minha feature"



Envie para o repositório remoto:

git push origin minha-feature



Abra um Merge Request no GitLab.


Licença
Este projeto está licenciado sob a MIT License.

Contato
Para dúvidas ou sugestões, entre em contato com helenobordignon.
