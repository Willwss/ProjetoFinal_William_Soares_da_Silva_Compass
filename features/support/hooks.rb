Before do
    @app = App.new
  end

  After do |scenario|

     #if scenario.failed?
        screenshot =  Capybara.page.save_screenshot("screenshots/sc.png")
        attach(screenshot, "image/png")
     #end

end