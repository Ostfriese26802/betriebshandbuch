class CreateDienstleisters < ActiveRecord::Migration[6.0]
  def change
    create_table :dienstleisters do |t|
      t.string :name
      t.string :telefonnummer
      t.string :bereitschaftsnummer
      t.text :servicezeiten
      t.string :email

      t.timestamps
    end
  end
end
