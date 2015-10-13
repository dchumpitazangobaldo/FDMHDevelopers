class Reservation < ActiveRecord::Base
  belongs_to :profile
  belongs_to :vehicle
  belongs_to :service
  
  def profile_name
    self.profile_name
  end
  
  def vehile_plate
    self.vehicle_plate
  end
  
  def service_name
    self.service_name
  end
  
end
