class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :userid
      t.string :venueid
      t.text :comment
      t.boolean :like

      t.timestamps
    end
  end
end
