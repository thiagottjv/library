class Book < ActiveRecord::Base
	has_many :rents
	has_many :users, :through => :rents
end