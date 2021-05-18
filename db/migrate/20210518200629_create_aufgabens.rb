class CreateAufgabens < ActiveRecord::Migration[6.0]
  def change
    create_table :aufgabens do |t|
      t.string :name
      t.string :zeitpunkt
      t.text :beschreibung
      t.references :applikation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
