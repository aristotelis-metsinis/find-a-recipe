# Load the module files. 
require 'httparty'
require 'pp'

# Class that implements the "HTTP API" to "http://food2fork.com/api".
#
# It is responsible for representing business data and logic.
class Recipe
	
	# Embed module in the class; import the "HTTParty" mixin.
	include HTTParty

	# Define a "base_uri" to use "http://food2fork.com/api".
	hostport = ENV[ 'FOOD2FORK_SERVER_AND_PORT' ] || 'www.food2fork.com'
	base_uri "http://#{hostport}/api"
	# Define a default query param of key for all "HTTP GET" requests whose value is equal to value of the environment variable "FOOD2FORK_KEY".
	key_value = ENV[ 'FOOD2FORK_KEY' ]
	default_params key: key_value
	# Specify the desired format as "JSON".
	format :json

    # "for" class method.
	# It accepts a keyword for a "search" term (to query),
    # issues a "HTTP GET" request using the "HTTParty" gem; i.e. query the "Food2Fork" API for a result,
    # adds the "HTTP GET" request that must have the "q=keyword" query argument and queries "/search" route,
    # returns the "JSON" payload document supplied in the "recipes" element of the "hash" returned by "HTTParty".	
    def self.for( keyword )    	
    	
    	options = { query: { q: keyword } }
    	get( '/search', options )[ 'recipes' ]

    end

end
