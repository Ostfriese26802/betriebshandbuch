class CreateFachgruppes < ActiveRecord::Migration[6.0]
  def change
    create_table :fachgruppes do |t|
      t.string :name
      t.string :telefonnummer
      t.string :bereitschaft
      t.string :email
      t.string :ticketgruppe

      t.timestamps
    end
  end
end
