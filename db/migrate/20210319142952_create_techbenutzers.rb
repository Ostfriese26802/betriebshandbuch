class CreateTechbenutzers < ActiveRecord::Migration[6.0]
  def change
    create_table :techbenutzers do |t|
      t.string :name
      t.string :kennwort
      t.references :applikation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
