class CreateBuyCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :buy_characters do |t|
      t.string :image_sold
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
