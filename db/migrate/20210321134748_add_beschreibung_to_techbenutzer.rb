class AddBeschreibungToTechbenutzer < ActiveRecord::Migration[6.0]
  def change
    add_column :techbenutzers, :beschreibung, :text
  end
end
