class CreateJogos < ActiveRecord::Migration
  def change
    create_table :jogos do |t|
      t.date :dia
      t.string :tipo_jogo

      t.timestamps null: false
    end
  end
end
