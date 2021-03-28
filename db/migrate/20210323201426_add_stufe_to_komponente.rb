class AddStufeToKomponente < ActiveRecord::Migration[6.0]
  def change
    add_reference :komponentes, :stufe, foreign_key: true
  end
end
