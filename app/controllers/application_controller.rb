class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  ensure_security_headers(
    hsts: false,
    csp: {
      enforce: true,
      default_src: 'https: self',
      font_src: 'https: self data:',
      style_src: 'https: self',
    }
  )
end
