class WelcomeController < ApplicationController
  #before_action :authenticate_guard!
  # GET /welcome


  def new
    @guard = Guard.new
  end

  def create
    @guard = Guard.new(guard_params)
    if @guard.save
      log_in @guard
      flash[:success] = "Edit Complete!"
      redirect_to '/'
    else
      render 'new'
    end
  end

  def edit
    @guard = Guard.find(current_guard.id)
  end

  private

    def guard_params
      params.require(:guard).permit(:first_name,:last_name,:birthday,:age,:height)
    end
end
