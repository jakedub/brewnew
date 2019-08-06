class Identity < ApplicationRecord
  has_secure_password

  belongs_to :user

  def self.find_locally(params)
    find_by(email: params['email'])
  end

  def self.create_locally(params, user)
    create(user: user, username: params['username'], email: params['email'], password: params['password'])
  end
end
