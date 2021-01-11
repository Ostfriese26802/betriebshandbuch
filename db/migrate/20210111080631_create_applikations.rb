class CreateApplikations < ActiveRecord::Migration[6.0]
  def change
    create_table :applikations do |t|
      t.string :name
      t.text :beschreibung
      t.references :kunde, null: false, foreign_key: true

      t.timestamps
    end
  end
end
