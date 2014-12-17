class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :venue_id
      t.text :comment
      t.boolean :like

      t.timestamps
    end
  end
end
