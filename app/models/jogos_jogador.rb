class JogosJogador < ActiveRecord::Base
  belongs_to :jogo
  belongs_to :jogador

  def self.artilharia
  	@artilheiros = Array.new
    contador = 0
  	@lista = JogosJogador.all.order('jogador_id DESC').group_by(&:jogador_id).each do |key, value|
  		@hash = Hash.new
      @hash[:jogador] = Jogador.find(key).nome
      @hash[:gol] = value.sum(&:gol)
  		@artilheiros.push(@hash)
  	end
  	@artilheiros = @artilheiros.sort_by { |e| -e[:gol] }

  	return @artilheiros
  end

  def self.artilharia_grafico
  	@artilheiros = JogosJogador.artilharia
  	@retorno = Array.new
  	@artilheiros.each do |e|
  		@lista_artilheiros = Array.new
  		@lista_artilheiros.push(e[:jogador])
  		@lista_artilheiros.push(e[:gol])
	  	@retorno.push(@lista_artilheiros)
  	end

  	return @retorno.take(5)
  end

end
