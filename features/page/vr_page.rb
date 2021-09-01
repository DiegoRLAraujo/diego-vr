class PraVoce < SitePrism::Page

# mapeamento com xpath para localizar a secão (PRA VOCÊ)
  element :secao_pra_voce, :xpath, '/html/body/header/nav/div[1]/ul/li[3]'
  element :secao_mapa,             '#mapSection'

# metodos 
  def pagina_secao_pra_voce
    secao_pra_voce.click
  end

  def valida_secao_mapa
    secao_mapa.visible?
  end

end
