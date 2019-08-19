class User < ApplicationRecord
  attr_accessor :password
  before_save { self.email = email.downcase }
  has_many :brews
  has_many :authorizations
  validates :first_name, :last_name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password

  def full_name
    [first_name, last_name].join(' ')
  end

end
