class CreateReferenzs < ActiveRecord::Migration[6.0]
  def change
    create_table :referenzs do |t|
      t.string :name
      t.string :link
      t.references :applikation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
