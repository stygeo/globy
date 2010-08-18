class ProjectsController < InheritedResources::Base
	belongs_to :user, :optional => true
	
	def create
		create! do |success, failure|
			success.html { redirect_to dashboard_path, :notice => t('.created')}
		end
	end
end
