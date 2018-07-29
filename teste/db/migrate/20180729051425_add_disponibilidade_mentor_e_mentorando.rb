class AddDisponibilidadeMentorEMentorando < ActiveRecord::Migration[5.1]
  def change
    add_reference :disponibilidade_mentors, :fila_mentors, foreign_key: true
    add_reference :disponibilidade_mentorandos, :fila_mentorandos, foreign_key: true
  end
end
