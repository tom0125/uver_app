class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :frequency
      t.integer :waiting_time
      t.integer :attitude
      t.text :comment
      t.references :shop,foreign_key: true

      t.timestamps
    end
  end
end
