class User < ApplicationRecord
	has_secure_password
  	belongs_to :role

  	before_save :downcase_email
 
	VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :names, presence: true
	validates :role, presence: true
	validates :email, presence: true,
		length: {maximum: 255},
		format: { with: VALID_EMAIL_REGEX},
		uniqueness: {case_sensitive: false}
	validates :password_digest, presence: true,
		length: {minimum: 6},
		allow_nil: true

	private

	def downcase_email
		self.email.downcase!
		
	end

end
