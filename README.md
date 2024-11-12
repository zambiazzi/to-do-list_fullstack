# to do list fullstack

CRUD simples realizado com Ruby on Rails.

![index picture](index-print.png)


## Pré-requisitos

- [Ruby](https://www.ruby-lang.org) (versão 3.2.3)
- [Rails](https://rubyonrails.org) (versão 6.1.7)
- [Bundler](https://bundler.io)
- [Node.js](https://nodejs.org) e [Yarn](https://yarnpkg.com) (para gerenciar pacotes JS)
- [PostgreSQL](https://www.postgresql.org/download/)

## Como rodar o projeto localmente

Siga esses passos para configurar o ambiente local.

### 1. Clone o repositório

```
git clone https://github.com/zambiazzi/to-do-list_fullstack
cd to-do-list_fullstack
```

### 2. Instale as dependências
```
bundle install
yarn install
```

### 3. Configure o banco de dados

```
rails db:create
rails db:migrate
```

### 3. Inicie o servidor

```
rails s
```

<br>

O projeto deve estar disponível em `http://localhost:3000`
