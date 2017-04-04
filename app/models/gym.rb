class Gym < ApplicationRecord
  has_many :climbers, class_name: :user

  #Compiles a list of all current climbing gyms and puts it into the proper array format for use in the bootstrap form helpers:
  def self.complile_list
    all_gyms = self.all
    gym_collection = []
    all_gyms.each
  end
end
