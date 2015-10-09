class Reservation < ActiveRecord::Base
  belongs_to :profile
  belongs_to :vehicle
  belongs_to :service
end
