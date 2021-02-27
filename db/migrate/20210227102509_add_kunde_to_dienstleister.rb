class AddKundeToDienstleister < ActiveRecord::Migration[6.0]
  def change
    add_reference :dienstleisters, :kunde, foreign_key: true
  end
end
