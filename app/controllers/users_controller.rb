class UsersController < InheritedResources::Base
	actions :all 
	
	def create
		create! do |success, failure|
			success.html { redirect_to dashboard_url}
		end
	end
end
