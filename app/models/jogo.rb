class Jogo < ActiveRecord::Base
	has_many :jogos_jogadores, dependent: :destroy
end
