class CreateCautions < ActiveRecord::Migration[5.2]
  def change
    create_table :cautions do |t|
      t.string :matter

      t.timestamps
    end
  end
end
