# language: pt

Funcionalidade: Validar o Mapa

Contexto:
  Dado que acesse a home da VR

@vr_mapa
Cenário: Localizar Lojas que Aceitam VR
  Dado que navegue até a seção Pra Você
  E clique no botão "Onde usar meu VR Refeição?"
  Então valide que o mapa do Google foi aberto
