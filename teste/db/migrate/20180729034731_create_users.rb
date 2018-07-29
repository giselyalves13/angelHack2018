class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :senha
      t.string :nome
      t.string :genero

      t.timestamps
    end
  end
end
