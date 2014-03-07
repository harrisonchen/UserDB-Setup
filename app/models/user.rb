class User < ActiveRecord::Base

	# save email in lowercase format for compatibility with web browsers
	before_save { self.email = email.downcase }

	# initialize the user session variable 'remember_token' when created
	before_create :create_remember_token

	# name cannot be blank or empty
	validates :name, presence: true

	# email validation format
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

	# email cannot be blank or empty, must have correct format,
	# => must be unique and is not case sensitive
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
				uniqueness: { case_sensitive: false }

	# has_secure_password creates methods to set and authenticate a BCrypt password.
	# => This requires the User DB to have a password_digest attribute
	# => validations for password and password_confirmation are automatically included
	has_secure_password
	validates :password, length: { minimum: 6 }
	validates :password_confirmation, presence: true

	# generate random URL-safe base64 string
	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	# returns a hash of 'token' (encrypts)
	def User.encrypt(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private

		# set a new value to the user session variable 'remember_token'
		def create_remember_token
			self.remember_token = User.encrypt(User.new_remember_token)
		end
end
