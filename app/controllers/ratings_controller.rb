class RatingsController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def update
  end

  def dashboard
    @users = User.all
  end
end
