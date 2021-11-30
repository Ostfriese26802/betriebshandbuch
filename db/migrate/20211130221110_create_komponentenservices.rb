class CreateKomponentenservices < ActiveRecord::Migration[6.0]
  def change
    create_table :komponentenservices do |t|
      t.string :name
      t.references :komponente, null: false, foreign_key: true
      t.text :beschreibung

      t.timestamps
    end
  end
end
