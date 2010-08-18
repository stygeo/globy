class UsersController < InheritedResources::Base
	actions :create
	
	def create
		create! do |success, failure|
			success.html { redirect_to dashboard_url}
		end
	end
end
