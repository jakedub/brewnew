class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :brews
  has_many :authorizations
  validates :first_name, :last_name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password, confirmation: { case_sensitive: true }
  has_secure_password
end
