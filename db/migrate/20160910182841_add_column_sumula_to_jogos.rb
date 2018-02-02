class AddColumnSumulaToJogos < ActiveRecord::Migration
  def change
    add_column :jogos, :sumula, :string
  end
end
