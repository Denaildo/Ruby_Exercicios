class CreateSerietreinos < ActiveRecord::Migration
  def change
    create_table :serietreinos do |t|
      t.integer :quantidade
      t.integer :repeticao
      t.references :treino
      t.references :exercicio

      t.timestamps
    end
    add_index :serietreinos, :treino_id
    add_index :serietreinos, :exercicio_id
  end
end
