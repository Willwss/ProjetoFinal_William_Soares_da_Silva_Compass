Dado('que esteja na página de login') do  
  @app.login.load                      
end

Quando("realizar o login com {string} e {string}") do |email, password| 
  @app.login.login(email, password)     
end
                                                                         
Então("deve exibir {string} na área logada") do |termo|
  expect(@app.home.usuario_logado).to eql termo
end

##############TESTE REALIZANDO LOGIN E PESQUISANDO ITEM #############

Quando('estiver logado') do
  @app.login.login("testenome000@hotmail.com","1234567890")
end

Quando('realizar uma busca na barra de pesquisa da home') do
  @app.home.search_item("Samsung")
end

Então('deverá exibir o item informado') do
  expect(@app.home).to have_content("Samsung")
end

######################################################################

Então("devo ver a mensagem de alerta {string}") do |termo|                 
  expect(@app.login.mensagem_alerta).to include termo
end

