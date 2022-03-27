class UsersController < ApplicationController
  def show
    @user = User.find_by_id(params[:id])
    @posts = @user.posts 
  end

  def status
    if @user.first_name && @user.last_name
      @user.first_name + " " + @user.last_name
    else
      @user.email
    end
end

end
