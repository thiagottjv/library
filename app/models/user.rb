class User < ActiveRecord::Base
	attr_accessible :admin, :email, :id, :name, :password
	has_many :rents
	has_many :books, :through => :rents
end
