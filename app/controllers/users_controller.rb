class UsersController < ApplicationController
  include UsersHelper

  def signup

    if request.method == "POST"
      @user = User.new(user_params)
      @user.build_profile()
      p @user
      if @user.save
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
