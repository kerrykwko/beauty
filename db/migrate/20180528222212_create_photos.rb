class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :skintone_id
      t.string :image
      t.integer :product_id

      t.timestamps

    end
  end
end
