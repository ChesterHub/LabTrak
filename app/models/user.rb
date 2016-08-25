require 'Bcrypt'
class User < ApplicationRecord
 # users.password_hash in the database is a :string
 has_secure_password
 
 include BCrypt

 def password
 	@password ||= Password.new(password_hash)
 end

 def password=(new_password)
 	@password = Password.create(new_password)
 	self.password_hash = @password
 end

 has_many :user_proposals
 has_many :proposals, through: :user_proposals
 has_many :votes, dependent: :destroy
end
