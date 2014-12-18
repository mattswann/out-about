class AddColumnsToComments < ActiveRecord::Migration
  def change
    add_column :comments, :fb_name, :string
    add_column :comments, :user_img, :string
  end
end
