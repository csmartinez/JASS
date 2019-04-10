class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:fname, :lname, :bio, :email, :acc_type, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:fname, :lname, :bio, :email, :acc_type, :password_confirmation, :current_password)
  end
end
