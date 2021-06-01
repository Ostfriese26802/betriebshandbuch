class CreateKomponententyps < ActiveRecord::Migration[6.0]
  def change
    create_table :komponententyps do |t|
      t.string :name

      t.timestamps
    end
  end
end
