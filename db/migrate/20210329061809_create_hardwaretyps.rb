class CreateHardwaretyps < ActiveRecord::Migration[6.0]
  def change
    create_table :hardwaretyps do |t|
      t.string :name

      t.timestamps
    end
  end
end
