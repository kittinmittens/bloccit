class CreateAdvertisement < ActiveRecord::Migration
  def change
    create_table :advertisement do |t|
      t.string :title
      t.text :copy
      t.integer :price

      t.timestamps null: false
    end
  end
end
