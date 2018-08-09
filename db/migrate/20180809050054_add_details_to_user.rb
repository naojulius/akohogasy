class AddDetailsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :birth, :datetime
    add_column :users, :is_male, :string
    add_column :users, :is_female, :string
    add_column :users, :creator, :string
  end
end
