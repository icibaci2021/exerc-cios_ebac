#language: pt

Funcionalidade: Autenticação na plataforma
Como cliente da EBAC-SHOP
Quero fazer a autenticação na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação da EBAC-SHOP

Cenário: Autenticação válida
Quando eu digitar o usuário "p.icibaci@gmail.com"
E a senha "Password1234!"
Então deve acessar a página Minha Conta

Cenário: Usuário inexistente
Quando eu digitar o usuário "xxxxxx@gmail.com"
E a senha "Password1234!"
Então deve exibir uma mensagem de alerta "Endereço de e-mail desconhecido. Verifique novamente ou tente seu nome de usuário."

Cenário: Usuário com senha inválida
Quando eu digitar o usuário "p.icibaci@gmail.com"
E a senha "xxxxxxx"
Então deve exibir uma mensagem de alerta "Erro: A senha fornecida para o e-mail p.icibaci@gmail.com está incorreta. Perdeu a senha?"

Esquema do Cenário: Autenticar múltiplos usuários
Quando eu digitar o <usuario>
E a senha <senha>
Então deve acessar a página Minha Conta

Exemplos:
| usuario               | senha           |
| "p.icibaci@gmail.com" | "Password1234!" |
| "maria@ebac.com.br"   | "Senha@123"     |
| "joao@ebac.com.br"    | "Senha@456"     |
| "jose@ebac.com.br"    | "Senha@789"     |