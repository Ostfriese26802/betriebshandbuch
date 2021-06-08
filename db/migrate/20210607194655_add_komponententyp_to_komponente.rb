class AddKomponententypToKomponente < ActiveRecord::Migration[6.0]
  def change
    add_reference :komponentes, :komponententyp,  foreign_key: true
  end
end
