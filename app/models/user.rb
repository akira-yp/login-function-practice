class User < ApplicationRecord
  has_secure_password
  validates :email,uniqueness: true
  validates :user_name,presence: true
  validates :email, presence: true
  before_validation { email.downcase! }
  validates :email,format: { with: /\A[\w+\-.]+@[a-z\d\-.]+.[a-z]+\z/i }
end
