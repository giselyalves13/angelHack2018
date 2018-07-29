class CreateDisponibilidadeMentorandos < ActiveRecord::Migration[5.1]
  def change
    create_table :disponibilidade_mentorandos do |t|
      t.string :dia

      t.timestamps
    end
  end
end
