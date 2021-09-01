# Padrão de projeto para evitar de instâncias as classes em steps
Dir[File.join(File.dirname(__FILE__),
              '../page/*.rb')].sort.each { |file| require file }

module PagesObjects

# instanciando as classes dentro dos metodos
  def praVoce
    PraVoce.new
  end

  def common
    Common.new
  end

end
