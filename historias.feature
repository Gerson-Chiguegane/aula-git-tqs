Funcionalidade: Configurar produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que estou na página de configuração do produto

  Cenário: Selecionar cor, tamanho e quantidade obrigatórios
    Quando seleciono a cor "<cor>"
    E seleciono o tamanho "<tamanho>"
    E insiro a quantidade "<quantidade>"
    Então o produto é configurado corretamente

    Esquema do Cenário:
      | cor       | tamanho | quantidade |
      | vermelho  | M       | 5          |
      | azul      | G       | 3          |
      | amarelo   | P       | 10         |

  Cenário: Limpar configurações
    Dado que já configurei cor, tamanho e quantidade
    Quando clico no botão "Limpar"
    Então as configurações voltam ao estado original

  Cenário: Restrição de quantidade máxima
    Quando seleciono a cor "<cor>"
    E seleciono o tamanho "<tamanho>"
    E insiro a quantidade máxima permitida
    Então a quantidade é aceita e exibida corretamente

    Esquema do Cenário:
      | cor      | tamanho | quantidade |
      | vermelho | M       | 10         |
      | azul     | G       | 10         |
      | amarelo  | P       | 10         |

Funcionalidade: Login na plataforma

  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que estou na página de login

  Cenário: Login com dados válidos
    Quando insiro o usuário "<usuario>" e senha "<senha>"
    E clico no botão "Entrar"
    Então sou direcionado para a tela de checkout

    Esquema do Cenário:
      | usuario     | senha    |
      | usuario1    | senha123 |
      | usuario2    | senha456 |
      | usuario3    | senha789 |

  Cenário: Login com dados inválidos
    Quando insiro um usuário ou senha inválidos
    E clico no botão "Entrar"
    Então uma mensagem de alerta "Usuário ou senha inválidos" é exibida

    Esquema do Cenário:
      | usuario     | senha    |
      | usuario4    | senha123 |
      | usuario5    | senha456 |
      | usuario6    | senha789 |

Funcionalidade: Tela de cadastro - Checkout

  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na tela de cadastro

  Cenário: Cadastro com todos os dados obrigatórios
    Quando preencho o campo de nome com "<nome>"
    E preencho o campo de e-mail com "<email>"
    E preencho o campo de senha com "<senha>"
    E clico no botão "Cadastrar"
    Então meu cadastro é concluído com sucesso

    Esquema do Cenário:
      | nome    | email                  | senha      |
      | João    | joao@example.com       | senha123   |
      | Maria   | maria@example.com      | senha456   |
      | José    | jose@example.com       | senha789   |

  Cenário: Cadastro com e-mail inválido
    Quando preencho o campo de nome com "<nome>"
    E preencho o campo de e-mail com um formato inválido
    E preencho o campo de senha com "<senha>"
    E clico no botão "Cadastrar"
    Então uma mensagem de erro é exibida indicando que o formato do e-mail é inválido

    Esquema do Cenário:
      | nome    | email             | senha      |
      | João    | emailinvalido     | senha123   |
      | Maria   | email@invalido    | senha456   |
      | José    | teste@             | senha789   |

  Cenário: Cadastro com campos vazios
    Quando deixo campos obrigatórios em branco
    E clico nobotão "Cadastrar"
    Então uma mensagem de alerta é exibida indicando campos obrigatórios faltantes

    Esquema do Cenário:
      | nome    | email             | senha      |
      |         | joao@example.com  | senha123   |
      | Maria   |                   | senha456   |
      |         |                   | senha789   |