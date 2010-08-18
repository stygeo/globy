class HomeController < ApplicationController
	skip_before_filter :require_auth
	
	def index
		
	end
end
