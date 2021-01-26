class AddServerToKomponente < ActiveRecord::Migration[6.0]
  def change
    add_reference :komponentes, :server, foreign_key: true
  end
end
