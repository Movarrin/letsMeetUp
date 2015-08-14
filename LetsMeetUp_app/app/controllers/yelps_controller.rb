class YelpsController < ApplicationController
	def search
		#GETTING PARAMS FROM INTERNALSEARCH IN FORMVIEW
		lat1 = params[:lat1]
		long1 = params[:long1]
		lat2 = params[:lat2]
		long2 = params[:long2]
		activity = params[:activity]
		radius = params[:radius]

		search_results = YELP.search(lat1, long1, lat2, long2, activity, radius)
		puts "*************************"
		render json: search_results
		#SENDING TO YELP.RB TO USE GEM, 
		#RETURNS HERE, AND RETURNS JSON TO
		#INTERNALSEARCH IN FORMVIEW --- THEN CALLS
		#MAPVIEW INITIALIZER AND GENERATEMARKERS FXN 
	end
end