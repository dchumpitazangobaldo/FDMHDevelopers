class Vehicle < ActiveRecord::Base
  belongs_to :driver
  belongs_to :service
  has_many :reservation
  has_many :location
end
