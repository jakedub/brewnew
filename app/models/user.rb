class User < ApplicationRecord
  has_many :brews
  has_many :authorizations
  has_one :local_user

end
