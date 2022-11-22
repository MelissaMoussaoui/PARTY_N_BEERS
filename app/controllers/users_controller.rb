class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    authorize current_user
    @user = User.find(params[:id])
  end

<<<<<<< HEAD
    
    def show
        authorize current_user
        @user = User.find(params[:id])
    end
  
    def edit
    end
  
    def update
        current_user.update(user_params)
        redirect_to user_path(current_user)
    end
    
    private 
=======
  def edit
  end
>>>>>>> 349dcc46dfdfa16d4ae7fa0c4a5cced774fda9a1

  def update
    current_user.update(user_params)
    redirect_to user_path(current_user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :gender, :phone_number, :date_of_birth)
  end
end
