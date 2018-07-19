class ApplicationController < ActionController::Base
  # Autenticação basica http
  # http_basic_authenticate_with name: 'admin', password: 'admin', except: :index
end
