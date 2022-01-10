class UsersController < ApplicationController
  include UsersHelper

  def signup

    if request.method == "POST"
      @user = User.new(user_params)
      p user_params
      p @user
      if @user.save
        @profile= @user.build_profile()
        @profile.save
        session[:user_id] = @user.id
        redirect_to root_path
      else
        p 'Invalid data'
      end
    else
      # GET req
      p "GET req"
      @user = User.new
    end
  end


end
