class GymsController < ApplicationController
    def index
    @gym = Gym.first
    @newgym = Gym.new
    @allgyms = Gym.all
  end

  def create
    Gym.create(gym_params)
    redirect_to root_path
  end

  private

  def gym_params
    params.require(:gym).permit(:name, :address1, :address2, :city, :state, :zip, :website)
  end
end
