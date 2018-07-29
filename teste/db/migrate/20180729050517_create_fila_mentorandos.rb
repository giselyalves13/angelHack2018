class CreateFilaMentorandos < ActiveRecord::Migration[5.1]
  def change
    create_table :fila_mentorandos do |t|
      t.integer :mentorando_id
      t.string :habilidade

      t.timestamps
    end
  end
end
