class AddNameToHardwaretypzuserver < ActiveRecord::Migration[6.0]
  def change
    add_column :hardwaretypzuservers, :name, :string
  end
end
