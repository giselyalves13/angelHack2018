class CreateLinguas < ActiveRecord::Migration[5.1]
  def change
    create_table :linguas do |t|
      t.string :lingua

      t.timestamps
    end
  end
end
