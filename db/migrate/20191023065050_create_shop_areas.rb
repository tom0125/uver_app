class CreateShopAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_areas do |t|
      t.references :shop, foreign_key: true
      t.references :area, foreign_key: true

      t.timestamps
    end
  end
end
