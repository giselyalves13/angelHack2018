class CreateDisponibilidadeMentors < ActiveRecord::Migration[5.1]
  def change
    create_table :disponibilidade_mentors do |t|
      t.string :dia

      t.timestamps
    end
  end
end
