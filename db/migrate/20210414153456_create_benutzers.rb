class CreateBenutzers < ActiveRecord::Migration[6.0]
  def change
    create_table :benutzers do |t|
      t.string :email
      t.string :name
      t.integer :rechte
      t.string :password_digest

      t.timestamps
    end
    add_index :benutzers, :email, unique: true
  end
end
