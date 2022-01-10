module UsersHelper

  def user_params
    params.require(:user).permit(:name,:email,:password_digest)
  end

end
