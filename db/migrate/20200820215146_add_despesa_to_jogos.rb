class AddDespesaToJogos < ActiveRecord::Migration
  def change
    add_column :jogos, :despesa, :decimal, default: 0.0
  end
end
