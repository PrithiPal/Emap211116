class WelcomeController < ApplicationController
  #before_action :authenticate_guard!
  # GET /welcome
  def index
    @my_guard = current_guard
  end
  
  def edit
    
  end

end
