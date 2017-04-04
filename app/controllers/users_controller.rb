class UsersController < ApplicationController

def new
  @gyms = Gym.all
  
end

def create
end

end
