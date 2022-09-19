Dado('que esteja na página de cadastro') do
    @app.cadastro.load
  end
  
  Quando('realizar o cadastro com {string}, {string} e {string}') do |nome, email, password|
    @app.cadastro.cadastro(nome, email, password)
  end

  Então ('deve exibir {string} quando tiver sucesso no cadastro') do |texto|
    expect(@app.home.logged_user).to eql texto
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
Então('devo ver a mensagem de alerta {string}') do |texto|
  expect(@app.cadastro.mensagem_alerta_cad).to include texto
end

  
  