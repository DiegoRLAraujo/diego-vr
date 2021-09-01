require 'cucumber'
require 'pry'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
# require_relative - chamando a pasta (page_helpers.rb) onde está sendo criado os metodos para instânciar todas as classes do projeto
require_relative 'page_helpers.rb'
# chamando o modulo do page_helpers onde contém os metodos chamando as classes
World(PagesObjects)

# Padrão de projeto para iniciar a automação abrindo o browser que eu deixo definido no drive
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 10
  Capybara.page.driver.browser.manage.window.maximize
end
