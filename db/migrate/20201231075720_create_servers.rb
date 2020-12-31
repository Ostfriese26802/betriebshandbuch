class CreateServers < ActiveRecord::Migration[6.0]
  def change
    create_table :servers do |t|
      t.string :name
      t.string :ip
      t.references :kunde, null: false, foreign_key: true
      t.references :betriebssystem, null: false, foreign_key: true
      t.boolean :archiviert

      t.timestamps
    end
  end
end
