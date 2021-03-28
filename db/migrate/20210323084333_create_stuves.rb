class CreateStuves < ActiveRecord::Migration[6.0]
  def change
    create_table :stuves do |t|
      t.string :name
      t.text :beschreibung
      t.references :kunde, null: false, foreign_key: true

      t.timestamps
    end
  end
end
