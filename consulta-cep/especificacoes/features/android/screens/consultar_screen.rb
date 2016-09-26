# coding: utf-8
class ConsultarScreen < AndroidScreenBase
  # Identificador da tela
  trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)         { 'consulta_activity' }
  element(:campo_cep)              { 'cepEditText' }
  element(:botao_consultar)		{ 'buttonQuery' }

  # Declare todas as acoes da tela
  action(:tocar_botao_consultar) do
    touch_screen_element botao_consultar
  end

  def digitar_cep(cep)
  	enter cep, campo_cep
  end

end
