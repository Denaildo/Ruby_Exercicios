class CreateTreinos < ActiveRecord::Migration
  def change
    create_table :treinos do |t|
      t.date :datainicio
      t.string :objetivo
      t.references :aluno

      t.timestamps
    end
    add_index :treinos, :aluno_id
  end
end
