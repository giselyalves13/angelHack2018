class AddLinguasToUser < ActiveRecord::Migration[5.1]
  def change
  	    add_reference :linguas, :user, foreign_key: true
  	    add_reference :habilidades, :user, foreign_key: true
  end
end
