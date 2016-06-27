class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authorize
  protect_from_forgery with: :exception

  before_filter :set_store_info

  def set_store_info
		@page_info = Info.first()
		@page_title = @page_info.name
		@phone_number = @page_info.phone
		@email_address = @page_info.email
		@physical_address = @page_info.address
		@intro = @page_info.intro
		@about_us = @page_info.about
		@privacy_policy = @page_info.policy
		@terms_of_service = @page_info.terms
	end

	protected
		def authorize
			unless User.find_by(id: session[:user_id])
				redirect_to login_url, notice: "Please log in"
			end
		end
		
end
