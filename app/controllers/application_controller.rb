class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Protect against malicious javascript, by enforcing Content Security Policy.
  # Details see:
  # * https://scrivito.com/scrivito/improving-in-place-editing-security-61d5c81fb81ab89a
  # * https://en.wikipedia.org/wiki/Content_Security_Policy
  # * https://github.com/twitter/secureheaders
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
