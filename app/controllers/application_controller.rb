class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true, with: :exception
  def current_ability
    @current_ability ||= Ability.new(current_admin)
  end

end
