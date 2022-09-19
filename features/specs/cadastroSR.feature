#language: pt
Funcionalidade: Cadastro
    
  #Contexto:Na tela de Cadastro
   
  
  Cenario: Sucesso no Cadastro
    Dado que esteja na página de cadastro
    Quando realizar o cadastro com "testenome1", "testenome1@hotmail.com" e "1234567890"
    Então deve exibir "Serverest Store" quando tiver sucesso no cadastro
    E informar no campo de pesquisa 'Samsung' e clicar em pesquisar

  #Cenario: Pesquisa Item ao cadastrar
    #Quando exibir "Serverest Store"
    #Então informar no campo de pesquisa 'Samsung' e clicar em pesquisar

  Esquema do Cenario: Falha no Cadastro
    Dado que esteja na página de cadastro
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