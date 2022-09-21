class Home < SitePrism::Page
  set_url 'home'
  
  element :search, "input[data-testid='pesquisar']"
  element :button, "button[data-testid='botaoPesquisar']"
  element :message, '/html/body/div/div/div/h1' #titulo serverest

  def usuario_logado
    message.text  
  end

  def search_item(termo)
    search.click
    search.set termo
    button.click
  end


end