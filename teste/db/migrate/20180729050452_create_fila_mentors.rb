class CreateFilaMentors < ActiveRecord::Migration[5.1]
  def change
    create_table :fila_mentors do |t|
      t.integer :mentor_id
      t.string :habilidade

      t.timestamps
    end
  end
end
