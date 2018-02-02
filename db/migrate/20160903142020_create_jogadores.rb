class CreateJogadores < ActiveRecord::Migration
  def change
    create_table :jogadores do |t|
      t.string :nome
      t.boolean :ativo

      t.timestamps null: false
    end
  end
end
