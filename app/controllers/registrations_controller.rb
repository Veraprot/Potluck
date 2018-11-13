class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :bio, :location, :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :bio, :location,:avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at, :email, :password, :password_confirmation, :current_password)
  end
end