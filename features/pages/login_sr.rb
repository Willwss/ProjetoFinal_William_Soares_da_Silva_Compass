class Login < SitePrism::Page        
  set_url 'login'                           
  element :input_email, '#email'      
  element :input_password, '#password' 
  element :alert, '/html/body/div/div/div/form/div[1]'
  
  def login(email, password) 
    input_email.send_keys(email) 
    input_password.send_keys(password) 
    click_button "Entrar"
  end

  def search_item(termo)
    search.click
    search.set termo
    button.click
  end

  def mensagem_alerta
    alert.texto   
  end

end


