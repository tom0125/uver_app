class CreateShopCautions < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_cautions do |t|
      t.references :shop
      t.references :caution
      t.timestamps
    end
  end
end
