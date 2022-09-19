class Home < SitePrism::Page
  set_url 'home'
  
  element :message, '/html/body/div/div/div/h1' #titulo serverest
  element :search, '//*[@id="root"]/div/div/div[1]/div/div[2]/input'
  element :button, '#root > div > div > div.col-12 > div > div:nth-child(3) > button'

  def logged_user
    message.text  
  end

  def search_item(item)
    search.set item
    click_button '#root > div > div > div.col-12 > div > div:nth-child(3) > button'
  end
  
end