class CreateKomponentes < ActiveRecord::Migration[6.0]
  def change
    create_table :komponentes do |t|
      t.string :name
      t.text :beschreibung
      t.string :installationspfad
      t.string :port
      t.string :start
      t.string :stop
      t.text :besonderheiten
      t.references :applikation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
