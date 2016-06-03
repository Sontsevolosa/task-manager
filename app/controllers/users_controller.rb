class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])

  def new
  end
end
