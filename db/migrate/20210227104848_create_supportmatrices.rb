class CreateSupportmatrices < ActiveRecord::Migration[6.0]
  def change
    create_table :supportmatrices do |t|
      t.references :applikation, null: false, foreign_key: true
      t.integer :fachgruppe_id
      t.integer :dienstleister_id
      t.string :was
      t.text :beschreibung

      t.timestamps
    end
  end
end
