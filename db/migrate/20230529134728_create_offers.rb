class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :description
      t.string :color
      t.integer :length
      t.string :size
      t.string :style

      t.timestamps
    end
  end
end
