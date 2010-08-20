class Error < Struct.new(:error)
	attr_reader :message
	
	NOMETHOD = 0,
	ALREADYSUBSCRIBED = 1
	
	ERROR_MESSAGES = [
		"No method",
		"Already subscribed to project"
	]
	
	def initialize(error)
		self.message = error_to_message
	end
	
	def error_to_message
		return ERROR_MESSAGE[self.error_message]
	end
end