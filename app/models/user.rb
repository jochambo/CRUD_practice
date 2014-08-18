class User < ActiveRecord::Base
  has_many :plates
  has_many :trucks

  validates :email, uniqueness: true
  has_secure_password
end
