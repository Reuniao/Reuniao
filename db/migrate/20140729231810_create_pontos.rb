class CreatePontos < ActiveRecord::Migration
  def change
    create_table :pontos do |t|
      t.string :titulo
      t.string :data
      t.string :status
      t.string :solucao

      t.timestamps
    end
  end
end
