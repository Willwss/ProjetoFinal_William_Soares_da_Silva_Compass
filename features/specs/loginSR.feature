#language: pt
Funcionalidade: Login
    
  Contexto:Na tela de login
   Dado que esteja na página de login
  
  Cenario: Sucesso no login
    Quando realizar o login com "testenome12@hotmail.com" e "1234567890"
    Então deve exibir "Serverest Store" na área logada
    
  Cenário: Pesquisar por produto
    Quando estiver logado
    E realizar uma busca na barra de pesquisa da home
    Então deverá exibir o item informado

  Esquema do Cenario: Falha no login
    Quando realizar o login com <email> e <senha>
    Então devo ver a mensagem de alerta <texto>

    Exemplos:
      | email                           | senha               | texto                              |
      | "emailparacadastro@hotmail.com" | "senha incorreta"   | "Email e/ou senha inválidos"       |
      | "usuário incorreto"             | "1234567890"        | "Email deve ser um email válido"   |
      | ""                              | "1234567890"        | "Email não pode ficar em branco"   |
      | "novoemailteste@gmail.com"      | ""                  | "Password não pode ficar em branco"| 