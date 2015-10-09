class Service < ActiveRecord::Base
    has_many :reservation
    has_many :vehicle
end
