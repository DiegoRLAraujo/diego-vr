class Common < SitePrism::Page

# metodo para clicar em qualquer botão que tenha o texto que retonar do BDD
  def clicar_botao(nomeBtn)
    click_on(nomeBtn)
  end

end
