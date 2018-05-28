class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :brand
      t.string :item
      t.string :shade

      t.timestamps

    end
  end
end
