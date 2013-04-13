class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id
      t.string :name
      t.string :email
      t.string :password
      t.integer :admin

      t.timestamps
    end
  end
end
