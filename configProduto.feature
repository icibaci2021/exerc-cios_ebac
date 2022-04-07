#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho, gosto e quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página da EBAC-SHOP
E eu clicar no produto desejado

Cenário: Escolher cor, tamanho e quantidade do produto
Quando eu escolher a cor, o tamanho e a quantidade desejada
E clicar no botão Comprar
Então o produto deve ser adicionado ao carrinho de compras

Cenário: Clicar no botão Comprar, sem selecionar cor e tamanho 
Quando eu clicar no produto desejado
E clicar no botão Comprar
Então deve exibir mensagem de alerta "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."

Cenário: Escolher 15 unidades do produto
Quando eu clicar no produto desejado
E escolher 15 unidades do produto
E clicar no botão "Comprar"
Então deve apresentar mensagem de alerta "Quantidade máxima excedida por item."

Cenário: Limpar escolha de tamanho e cor
Quando eu escolher a cor, o tamanho e a quantidade do produto
E eu clicar no botão Limpar
Então deve voltar ao estado original
