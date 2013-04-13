class Rent < ActiveRecord::Base
	attr_accessible :book_id, :date, :id, :rent_type, :user_id
	belongs_to :book
	belongs_to :user
end
