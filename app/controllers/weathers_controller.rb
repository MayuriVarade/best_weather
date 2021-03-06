class WeathersController < ApplicationController
	include Weather

	def show
		compare
		render :show	
	end

	def get_weather_1 
		get_city_1["main"]
	end	

	def get_weather_2
		get_city_2["main"]
	end

	def get_weather_3
		get_city_3["main"]
	end			

	def get_weather_4
		get_city_4["main"]
	end		

	def get_weather_5
		get_city_5["main"]
	end	

	def get_city_1
		city_1 = "Berlin"
		county_code_1 = "DE"
		weather_1 = open_weather_api.current city: city_1, country_code: county_code_1
		parse_weather(weather_1)
	end	

	def get_city_2
		city_2 = "Munich"
		county_code_2 = "DE"
		weather_2 = open_weather_api.current city: city_2, country_code: county_code_2
		parse_weather(weather_2)
	end	

	def get_city_3
		city_3 = "stuttgart"
		county_code_3 = "DE"
		weather_3 = open_weather_api.current city: city_3, country_code: county_code_3
		parse_weather(weather_3)
	end	

	def get_city_4
		city_4 = "Hamburg"
		county_code_4 = "DE"
		weather_4 = open_weather_api.current city: city_4, country_code: county_code_4
		parse_weather(weather_4)
	end			

	def get_city_5
		city_5 = "Dresden"
		county_code_5 = "DE"
		weather_5 = open_weather_api.current city: city_5, country_code: county_code_5
		parse_weather(weather_5)
	end				

private

  def open_weather_api
    OpenWeatherAPI::API.new api_key: "cb463bd718df17064b5196f9eb07ebb0"
  end
end
