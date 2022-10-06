Dado('que esteja na página de cadastro') do
  @app.cadastro.load
end

Quando('realizar o cadastro faker') do
  new_faker = Factory::Dynamic.register_fake
  @app.cadastro.cadastro_faker(new_faker)
  # @app.cadastro.cadastro(nome, email, password)
end

Então ('deve exibir {string} quando tiver sucesso no cadastro') do |texto|
  expect(@app.home.usuario_logado).to eql texto
end

Então('devo ver a mensagem de alerta {string}') do |texto|
  expect(@app.cadastro.mensagem_alerta_cad).to include texto
end

Quando('realizar o cadastro com {string}, {string} e {string}') do |nome, email, password|
  @app.cadastro.cadastro_error(nome, email, password)
end


