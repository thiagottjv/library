class User < ActiveRecord::Base
	has_many :rents
	has_many :books, :through => :rents
end