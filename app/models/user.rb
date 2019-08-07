class User < ApplicationRecord
  has_many :brews
  has_many :authorizations
  validates :first_name, :last_name, :email, :password, presence: true
  validates :password, confirmation: { case_sensitive: true }
end
