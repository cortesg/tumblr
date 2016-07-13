class User < ApplicationRecord
	has_many :posts
	has_many :comments
	validates_presence_of :name 
	validates :age, :presence => true, :numericality => {:only_integer => true}
	validates :password, :presence => true, :length => { minimum: 4 }
end
