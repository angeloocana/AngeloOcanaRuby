class User < ActiveRecord::Base
	has_many :logs

	validates :login, :presence => true
	validates :password, :presence => true
end
