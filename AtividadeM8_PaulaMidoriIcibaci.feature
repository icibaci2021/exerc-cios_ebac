    #language: pt

    Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho, gosto e quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página da EBAC-SHOP
            E eu clicar no produto desejado

            Cenário: Escolher cor, tamanho e quantidade do produto
            Quando eu escolher a cor
            E escolher o tamanho
            E escolher a quantidade desejada
            E clicar no botão Comprar
            Então o produto deve ser adicionado ao carrinho de compras

            Cenário: Clicar no botão Comprar, sem selecionar cor e tamanho 
            Quando eu clicar no produto desejado
            E clicar no botão Comprar
            Então deve exibir mensagem de alerta "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."

            Cenário: Escolher 15 unidades do produto
            Quando eu clicar no produto desejado
            E escolher a cor
            E escolher o tamanho
            E escolher 15 unidades do produto
            E clicar no botão "Comprar"
            Então deve apresentar mensagem de alerta "Quantidade máxima excedida por item."

            Cenário: Limpar escolha de tamanho e cor
            Quando eu clicar no produto desejado
            E escolher a cor
            E escolher o tamanho
            E eu clicar no botão Limpar
            Então deve voltar ao estado original



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



    Funcionalidade: Cadastro na plataforma
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro   
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar um email válido 
            E cadastrar uma senha válida de acordo com os requisitos de segurança
            Então deve acessar a página Minha Conta

            Cenário: Usuário inexistente
            Quando eu digitar o usuário inexistente
            E cadastrar uma senha válida de acordo com os requisitos de segurança
            Então deve exibir uma mensagem de alerta "Endereço de e-mail desconhecido. Verifique novamente ou tente seu nome de usuário."

            Cenário: Usuário com senha inválida
            Quando eu digitar um email válido
            E uma senha sem os critérios mínimos de segurança 
            Então deve exibir uma mensagem de alerta "Senha deve apresentar letras maiúsculas e minúscula, números e símbolos."

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario> válido
            E a senha <senha> válida
            Então deve acessar a página Minha Conta

            Exemplos:
            | usuario               | senha           |
            | "p.icibaci@gmail.com" | "Password1234!" |
            | "maria@ebac.com.br"   | "Senha@123"     |
            | "joao@ebac.com.br"    | "Senha@456"     |
            | "jose@ebac.com.br"    | "Senha@789"     |