class Truck < ActiveRecord::Base
  has_many :plates
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
  belongs_to :driver, class_name: "User", foreign_key: "driver_id"
end
