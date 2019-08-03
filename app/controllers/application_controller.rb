class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

   rescue_from ActiveRecord::RecordNotFound, with: :render_404 unless Rails.env.development?
   rescue_from ActiveController::RoutingError, with: :render_404 unless Rails.env.development?
   rescue_from Exception, with: :render_500 unless Rails.env.development?

  def render_404
    render template: 'erroes/error_404', status: 404, layout: 'application', content_type: "text/html"
  end

  def render_500
    render template: 'errors/error_500', status: 500, layout: 'application', content_type: "text/html"
  end

  private
  def after_sign_in_path_for(resource)
    case resource
    when User
      mypage_path
    when Management
      company_path
    else
      super
    end
  end

  def after_sign_out_path_for(resource)
    case resource
    when User, :user, :users
      "/"
    when Management, :management, :managements
      "/"
    else
      super
    end
  end

  protected

  # 入力フォームからアカウント名情報をDBに保存するために追加
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
