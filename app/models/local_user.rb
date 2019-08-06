class LocalUser < ApplicationRecord
  has_secure_password
  belongs_to :user

  validates :email, length: { minimum: 3 },
                    presence: true,
                    uniqueness: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]{2,3}+\z/i }

  # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :message => "error meat suit"
  validates :password, length: { minimum: 1 }

  before_save :downcase
  private

  def downcase
    self.email.downcase!
  end
end
