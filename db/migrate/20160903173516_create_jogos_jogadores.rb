class CreateJogosJogadores < ActiveRecord::Migration
  def change
    create_table :jogos_jogadores do |t|
      t.references :jogo, index: true, foreign_key: true
      t.references :jogador, index: true, foreign_key: true
      t.integer :gol, :default => 0
      t.decimal :cota, :default => 0.0

      t.timestamps null: false
    end
  end
end
