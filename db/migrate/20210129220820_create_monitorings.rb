class CreateMonitorings < ActiveRecord::Migration[6.0]
  def change
    create_table :monitorings do |t|
      t.string :name
      t.string :werte
      t.text :beschreibung

      t.timestamps
    end
  end
end
