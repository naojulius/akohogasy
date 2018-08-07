class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :image
      t.string :name
      t.text :description
      t.text :history
      
      t.timestamps
    end
  end
end
