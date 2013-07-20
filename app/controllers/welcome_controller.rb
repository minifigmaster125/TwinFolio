class WelcomeController < ApplicationController
  def index
     @home_page = true
  end

  def show
    render :show
  end

  def joraaver
  end

  def suchaaver
  end
end
