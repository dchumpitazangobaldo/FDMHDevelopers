class Vehicle < ActiveRecord::Base
  belongs_to :driver
  belongs_to :service
  has_many :reservation
  has_many :location
  
  def service_name
    self.service_name
  end
  
  def driver_name
    self.driver_name
  end
end
