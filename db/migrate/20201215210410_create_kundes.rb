class CreateKundes < ActiveRecord::Migration[6.0]
  def change
    create_table :kundes do |t|
      t.string :name
      t.string :kuerzel

      t.timestamps
    end
  end
end
