# Padrão de projeto, estrutura para gerar evidência, isso é utilizado como padrão por vários projetos, (AfterStep) para gerar evidência a cada step e (After) para gerar evidência de falha
AfterStep do |scenario|
  screenshot = "Passo.png"
  Capybara.page.driver.browser.save_screenshot(screenshot)
  encoded_img =Capybara.page.driver.browser.screenshot_as(:base64)
  embed("data:image/png;base64,#{encoded_img}",'image/png')
end

After do |scenario|
  if scenario.failed?
    screenshot = "Falha.png"
    Capybara.page.driver.browser.save_screenshot(screenshot)
    encoded_img = Capybara.page.driver.browser.screenshot_as(:base64)
    embed("data:image/png;base64,#{encoded_img}",'image/png')
  end
end
