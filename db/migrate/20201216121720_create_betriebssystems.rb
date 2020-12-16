class CreateBetriebssystems < ActiveRecord::Migration[6.0]
  def change
    create_table :betriebssystems do |t|
      t.references :betriebssystemtyp, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
