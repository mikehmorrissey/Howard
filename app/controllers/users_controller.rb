class UsersController < ApplicationController
  respond_to :json, :html 
  
  def show
    user = current_user
    respond_with user, root: false 	
  end

  def update
  	user = current_user
  	user.update(user_params)
  	respond_with user, root: false
  end

  def user_params
  	params.require(:user).permit(:phone, :email)
  end

  def destroy
    current_user.destroy()
    respond_with {}
  end
end