class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[show]

  def show; end

  private

  def set_profile
    @user = User.find(params[:id])
  end
end
