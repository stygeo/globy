class ProjectsController < InheritedResource::Base
	belongs_to :user, :optional => true
end
