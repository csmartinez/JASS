class RegistrationsController < Devise::RegistrationsController

  def create
    build_resource(sign_up_params)

    superadmin_superior = User.find_by(admin_key: resource.signup_key, acc_type: 'superadmin')
    admin_superior = User.find_by(faculty_key: resource.signup_key, acc_type: 'admin')

    if superadmin_superior.nil? == false
      resource.superior = superadmin_superior.id
      resource.acc_type = 'admin'
      resource.faculty_key = SecureRandom.alphanumeric
    elsif admin_superior.nil? == false
      resource.superior = admin_superior.id
      resource.acc_type = 'faculty'
    end

    resource.save

    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:fname, :lname, :bio, :email, :acc_type, :signup_key, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:fname, :lname, :bio, :email, :acc_type, :password_confirmation, :current_password)
  end
end
