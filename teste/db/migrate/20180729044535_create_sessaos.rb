class CreateSessaos < ActiveRecord::Migration[5.1]
  def change
    create_table :sessaos do |t|
      t.integer :mentor_id
      t.integer :mentorado_id
      t.datetime :horario
      t.string :habilidade

      t.timestamps
    end
  end
end
