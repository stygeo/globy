class UsersController < InheritedResources::Base
	skip_before_filter :require_auth
	actions :create
	
	def create
		create! do |success, failure|
			success.html { redirect_to dashboard_url}
		end
	end
end
