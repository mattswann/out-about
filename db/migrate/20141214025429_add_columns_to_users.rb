class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :location, :string
    add_column :users, :username, :string
    add_column :users, :name, :string
    add_column :users, :image, :string
    add_column :users, :image_url, :string
    add_column :users, :likes, :string
  end
end
