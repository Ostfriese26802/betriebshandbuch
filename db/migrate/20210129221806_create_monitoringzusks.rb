class CreateMonitoringzusks < ActiveRecord::Migration[6.0]
  def change
    create_table :monitoringzusks do |t|
      t.integer :server_id
      t.integer :komponente_id
      t.string :werte
      t.references :monitoring, null: false, foreign_key: true

      t.timestamps
    end
  end
end
