class AddAboutToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :about_user, :text
  end
end
