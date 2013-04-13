class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :id
      t.string :name
      t.string :author
      t.datetime :added
      t.text :description
      t.varchar :image_url

      t.timestamps
    end
  end
end
