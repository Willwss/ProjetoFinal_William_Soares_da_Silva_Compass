#language: pt
Funcionalidade: Cadastro
    
  Contexto: que esteja na página de cadastro
      Dado que esteja na página de cadastro 

  Cenario: Sucesso no Cadastro
    Quando realizar o cadastro faker
    Então deve exibir "Serverest Store" quando tiver sucesso no cadastro

  
   Cenario: Falha no Cadastro
    Quando realizar o cadastro com <nome>, <email> e <senha>
    Então devo ver a mensagem de alerta <texto>

    Exemplos:
      |nome     | email                           | senha               | texto                                    |
      |""       | "emailparacadastro@hotmail.com" | "senha incorreta"   | "Email e/ou senha inválidos"             |
      |"teste"  | "usuário incorreto"             | "1234567890"        | "Email deve ser um email válido"         |
      |"cad"    | ""                              | "1234567890"        | "Email não pode ficar em branco"         |
      |"semnome"| "novoemailteste@gmail.com"      | ""                  | "Password não pode ficar em branco"      | 
      |"cad"    | ""                              | "1234567890"        | "Email é obrigatório"                    |
      |""       | "emailparacadastro@hotmail.com" | "senha incorreta"   | "Nome é obrigatório"                     |


  Cenario: Cadastro Fixo
    Quando realizar o cadastro com "testenome000", "testenome000@hotmail.com" e "1234567890"
    Então deve exibir "Serverest Store" quando tiver sucesso no cadastro
  
  
  Cenário: Pesquisar por produto
    Quando estiver cadastrado
    E realizar uma busca na barra de pesquisa da home
    Então deverá exibir o item informado