# app "controller" that has an "index" action.
#
# The "controller" coordinates the interaction between the "user", the "views", and the "model".
# It is responsible for routing external requests to internal "actions", it manages caching,
# and "helper" modules as well as sessions.
#
# "Controller" class inherits from "ApplicationController" and contains "actions" ("Ruby" methods).
# Instance variables from the "controller" are available inside the "view".
# Create this "controller" and "action" executing : "rails generate controller recipes index".
# This command creates a file called : "app/controllers/recipes_controller.rb"
class RecipesController < ApplicationController
  
	# Controller's "index" action (a regular "Ruby" method) should :
	#	- check if a request parameter "search" was passed in.
	#	- use the "search" term as the keyword if supplied, and use a default value of "chocolate" if not supplied.
	def index
  
		@search_term = params[ :search ] || 'chocolate'
		@recipes = Recipe.for( @search_term )
  
  end
  
end
