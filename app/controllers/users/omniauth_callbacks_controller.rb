class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def twitter
    callback_from :twitter
  end
 
  private
  def callback_from(provider)
    provider = provider.to_s
 
    @user = User.find_for_oauth(request.env['omniauth.auth'].except("extra"))
    
    if @user.persisted?
      flash[:notice] = I18n.t('devise.omniauth_callbacks.success', kind: provider.capitalize)
      redirect_to show_path @user
    else
      session["devise.user_attributes"] = @user.attributes
      redirect_to root_path
    end
  end
end