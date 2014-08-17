class Truck < ActiveRecord::Base
  has_many :plates
  has_many :users, through: :plates
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
end
