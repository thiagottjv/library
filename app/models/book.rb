class Book < ActiveRecord::Base
	attr_accessible :added, :author, :description, :id, :image_url, :name
	has_many :rents
	has_many :users, :through => :rents
end
