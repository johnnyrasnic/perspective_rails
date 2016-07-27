class User < ActiveRecord::Base
  has_secure_password
  validates :email, uniqueness: true, allow_nil: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  has_many :posts
  has_many :comments
end
