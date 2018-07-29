class CreateHabilidades < ActiveRecord::Migration[5.1]
  def change
    create_table :habilidades do |t|
      t.string :habilidade

      t.timestamps
    end
  end
end
