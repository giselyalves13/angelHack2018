class RemoveCagada < ActiveRecord::Migration[5.1]
  def change
  	drop_table :sync_type_parents
  end
end
