Dado('que esteja na página de login') do  
    @app.login.load                      
  end
  
  Quando("realizar o login com {string} e {string}") do |email, password| 
    @app.login.login(email, password)     
  end
                                                                           
  Então("devo ver a mensagem de alerta {string}") do |termo|                 
    expect(@app.login.mensagem_alerta).to include termo
  end
  
  Então("deve exibir {string} na área logada") do |termo|
    expect(@app.home.logged_user).to eql termo
  end

  Então('informar no campo de pesquisa {string} e clicar em pesquisar') do |item|
    @app.home.search_item(item)
   end

  ###################################################
  # Quando('exibir {string}') do |string|
  #   expect(@app.home.logged_user).to eql string
  # end
  
  # Então('informar no campo de pesquisa {string} e clicar em pesquisar') do |item|
  #  @app.home.search_item(item)
  # end
  
  
###################################################### 