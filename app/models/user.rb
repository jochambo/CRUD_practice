class User < ActiveRecord::Base
  has_many :plates
  has_many :trucks, through: :plates
end
