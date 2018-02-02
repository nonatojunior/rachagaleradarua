class HomeController < ApplicationController

  def index
  	@dados = JogosJogador.artilharia_grafico
  end

end
