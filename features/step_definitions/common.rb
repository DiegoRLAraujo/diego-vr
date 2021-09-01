Dado("que acesse a home da VR") do
  # acessando a url Home da pagina VR
  visit 'https://www.vr.com.br/'
end

Dado("que navegue até a seção Pra Você") do
  # estou instanciando a classe dentro do metodo (praVoce) assim evito de ficar chamando a classe dentro do step
  praVoce.pagina_secao_pra_voce
end

Dado("clique no botão {string}") do |nomeBtn|
  # estou instanciando a classe dentro do metodo (common) assim evito de ficar chamando a classe dentro do step
  common.clicar_botao(nomeBtn)
end
