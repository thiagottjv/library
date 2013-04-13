class Rent < ActiveRecord::Base
	attr_accessible :book_id, :user_id, :rent_type, :date
	belongs_to :book
	has_many :users
end