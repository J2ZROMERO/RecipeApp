class Users::SessionsController < Devise::SessionsController
  # before_action :authenticate_user!
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    @style = 'public_recipes/index'
    @user = User.new
    @current_user = current_user
  end

  # POST /resource/sign_in
  def create
    super 
    
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected
  def after_sign_in_path_for(resource)
    public_recipes_path # cambia recipes_path a la ruta que desees
  end
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
