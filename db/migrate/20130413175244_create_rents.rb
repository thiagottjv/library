class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.integer :id
      t.integer :book_id
      t.integer :user_id
      t.integer :rent_type
      t.datetime :date

      t.timestamps
    end
  end
end
