class Jogo < ActiveRecord::Base
	has_many :jogos_jogadores, dependent: :destroy

	def self.credito
		@credito = JogosJogador.sum(:cota).to_f
	end
	
	def self.debito
		@debito = Jogo.sum(:despesa).to_f
	end

	def self.saldo
		@saldo = (self.credito - self.debito)
	end

end
