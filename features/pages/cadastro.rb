class Cadastro < SitePrism::Page   
  #mapeamentos     
  set_url 'cadastrarusuarios'   

  element :input_name, '#nome'
  element :input_email, '#email'      
  element :input_password, '#password'  
  element :btn_cadastrar, "button[type='submit']"
  element :alert, '#root > div > div > form > div:nth-child(3)'#nome obrigatorio
  element :alert, '#root > div > div > form > div:nth-child(4)'#email obrigatorio
  element :alert, '#root > div > div > form > div:nth-child(5)'#password nao pode ficar em branco
  
  #funçao que aplica os dados chamados e clica em cadastrar
  def cadastro_faker(cadastrar_fake_user) 
       input_name.set cadastrar_fake_user[:nome]
       input_email.set cadastrar_fake_user[:email]
       input_password.set cadastrar_fake_user[:senha]
       click_button "Cadastrar"
  end

  def cadastro_error(nome, email, password)
    input_name.send_keys(nome)
    input_email.send_keys(email) 
    input_password.send_keys(password) 
    click_button "Cadastrar"
  end
  
  #funçao que captura o texto ja mapeado e informado nos steps
  def mensagem_alerta_cad
    alert.texto   
  end

end

