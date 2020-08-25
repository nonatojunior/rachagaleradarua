class Add < ActiveRecord::Migration
  def change
    add_column :jogos, :descricao_despesa, :string
  end
end
