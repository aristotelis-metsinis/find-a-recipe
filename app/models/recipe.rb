require 'httparty'
require 'pp'

# Recipe class that will implement the HTTP API to http://food2fork.com/about/api.
class Recipe
	
	# import the HTTParty mixin.
	include HTTParty

	# define a base_uri to use http://food2fork.com/api.
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	base_uri "http://#{hostport}/api"
	# define a default query param of key for all HTTP GET requests whose value is equal to value of the environment variable FOOD2FORK_KEY.
	key_value = ENV[ 'FOOD2FORK_KEY' ]
	default_params key: key_value
	# specify the desired format as json.
	format :json

    # accepts a keyword for a search term (to query).
    # issues an HTTP GET request using the HTTParty gem; i.e. query the Food2Fork API for a result.
    # the HTTP GET request must have the "q=keyword" query argument and query "/search" route.
    # returns the JSON payload document supplied in the recipes element of the hash returned by HTTParty.	
    def self.for( keyword )    	
    	
    	options = { query: { q: keyword } }
    	get( '/search', options )[ 'recipes' ]

    end

end
