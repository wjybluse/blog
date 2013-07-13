class User < ActiveRecord::Base
	has_secure_password
	validates_presence_of :name,:email,:password,:password_confirmation
	validates_uniqueness_of :email
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates_confirmation_of :password

	def password_digest=(pass)
		self.digest_password=pass
	end

	def password_digest
		self.digest_password
	end
end
