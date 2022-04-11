            #language: pt

            Funcionalidade: Cadastro na plataforma
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            Cenário: Cadastro válido
            Quando eu digitar um email válido
            E cadastrar uma senha válida de acordo com os requisitos de segurança
            Então deve acessar a página Minha Conta

            Cenário: Cadastro com E-mail inexistente
            Quando eu digitar um e-mail inexistente
            E cadastrar uma senha válida de acordo com os requisitos de segurança
            Então deve exibir uma mensagem de alerta "Endereço de e-mail desconhecido. Verifique novamente."

            Cenário: Cadastro de senha sem os critérios mínimos de segurança
            Quando eu digitar um email válido
            E uma senha sem os critérios mínimos de segurança
            Então deve exibir uma mensagem de alerta "Senha deve apresentar letras maiúsculas e minúscula, números e símbolos."

            Esquema do Cenário: Cadastrar múltiplos usuários
            Quando clicar em cadastro
            E inserir <nome completo>, <e-mail> e <senha> válidos
            Então ao clicar em cadastrar deve acessar a página Minha Conta

            Exemplos:
            | nome completo            | e-mail                | senha           |
            | Paula Midori Icibaci     | "p.icibaci@gmail.com" | "Password1234!" |
            | Maria da Graça           | "maria@ebac.com.br"   | "Senha@123"     |
            | João da Silva Neves      | "joao@ebac.com.br"    | "Senha@456"     |
            | José Cabral de Melo Neto | "jose@ebac.com.br"    | "Senha@789"     |