class CreateHardwaretypzuservers < ActiveRecord::Migration[6.0]
  def change
    create_table :hardwaretypzuservers do |t|
      t.references :hardwaretyp, null: false, foreign_key: true
      t.references :server, null: false, foreign_key: true
      t.string :wert

      t.timestamps
    end
  end
end
