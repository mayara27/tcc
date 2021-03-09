# PLATAFORMA ECOMMERCE
```
Esta plataforma deve contém as mesmas funcionalidades básicas de um e-Commerce, como a criação
de novas lojas virtuais com um administrador e o cadastro de produtos suas categorias. 
O vendedor pode criar/editar/apagar uma ou várias categorias para dos produtos de sua loja. Também pode ativar ou inativar tanto um produto, quando sua própria loja.
Nela, um visitante deve ser conseguir navegar por todas as lojas ativas e visualizar seus produtos(assim como sua descrição). 
```

## COMO INICAR O PROJETO :
```
Para executar esse projeto você deve ter um computador, preferencialmente com Linux, com a linguagem de programação Ruby na versão 2.7.2 e Rails na versão 6.1.1.

Dentro do diretório do projeto, você deve instalar as dependências definidas no arquivo Gemfile com o comando bundle install em seu teminal.

Rodar o bin/setup para fazer as configurações necessárias do projeto.

Com todas dependências instaladas, execute o comando rails server em seu terminal e acesse localhost:3000 em seu navegador.
```

## SOBRE O LOGIN:
```
1. Usuários administradores devem utilizar o e-mail com domínio @locaweb.com.br.
2. Os usuários donos das lojas logam com domínio diferente.
3. Usuários visitantes não necessitam de login para navegar pelo sistema.

	### LOGINS PRÉ DEFINIDOS PARA USO:
>	1. ADMINISTRADOR:  email: administrador@locaweb.com.br | password: 123456
>	2. CLIENTE(DONO DA LOJA): email: dono@loja.com.br | password:123456 
>	3. CLIENTE(OUTRO DONO DA LOJA): email: outrodono@loja.com.br | password:123456 
```

## SOBRE AS ROTAS DA API: 
```
1. ENDPOINT PARA INSTALAÇÃO: post 'http://localhost:4000/api/v1/install_order' 
2. PARAMETROS ESPERADOS: [ {"order": 1, "customer": "12343245678", "email":"teste@teste.com.br", "plan":"basico" } ] 
```

## GEMS NECESSÁRIAS :
```
para realizar a autenticação do usuário:
gem 'devise'

para testar aplicações web:
gem 'capybara'

tradução pelos arquivos de configuração (yml):
gem 'i18n'

Para criar acessórios de teste para testes automatizados de software
gem 'factory_bot_rails'

Para trabalhar com as requisições HTTP
gem 'faraday'

Para utilização de icones no front:
gem 'font-awesome-rails'
```

## AUTORAS
```
* Diana Rodrigues
* Fernanda Andrade
* Lorena Coelho
* Luana Nunes
* Marianne
* Mayara Fernandes
```
