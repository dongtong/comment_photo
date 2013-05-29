class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :photo
      t.text :content

      t.timestamps
    end
    add_index :comments, :photo_id
  end
end
