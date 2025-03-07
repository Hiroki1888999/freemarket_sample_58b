class ApplicationController < ActionController::Base
  # 〜ベーシック認証に関する記述〜
  # before_action :basic_auth, if: :production?
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def production?
    Rails.env.production?
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:introduction,
                                                       :phone_number,
                                                       :nickname, 
                                                       :last_name_kanji,
                                                       :first_name_kanji,
                                                       :last_name_kana,
                                                       :first_name_kana,
                                                       :birthday,
                                                       :avatar])
  end
end
