module Weather
  extend ActiveSupport::Concern

  def parse_weather(weather_json)
    main = weather_json["weather"].first["main"]
    description = weather_json["weather"].first["description"]
    temp = to_celcius(weather_json["main"]["temp"]).ceil
    humidity = weather_json["main"]["humidity"]
    pressure = weather_json["main"]["pressure"]
    city = weather_json["name"]
    data = {"city" => city, "main" => main, "description" => description, "temp" => temp, "humidity" => humidity, "pressure" => pressure}
  end

 #Logic to convert Kelvin to Degree
  def to_celcius(temp)
    temp - 273.15
  end 

def compare
all_temperature = [get_city_1["temp"],get_city_2["temp"],get_city_3["temp"],get_city_4["temp"],get_city_5["temp"]].sort!
    max_temp = all_temperature.last
    min_temp = all_temperature.first
    @avg_temp = (max_temp + min_temp)/2
    r1 = (@avg_temp-5)
    r2 = (@avg_temp+5)

    data1 = []

    data1 << {"city" => get_city_1["city"], "temp" => get_city_1["temp"]} if (get_weather_1 == "Clear") && get_city_1["temp"].between?(r1,r2)
    data1 << {"city" => get_city_2["city"], "temp" => get_city_2["temp"]} if (get_weather_2 == "Clear") && get_city_2["temp"].between?(r1,r2)
    data1 << {"city" => get_city_3["city"], "temp" => get_city_3["temp"]} if (get_weather_3 == "Clear") && get_city_3["temp"].between?(r1,r2)
    data1 << {"city" => get_city_4["city"], "temp" => get_city_4["temp"]} if (get_weather_4 == "Clear") && get_city_4["temp"].between?(r1,r2)
    data1 << {"city" => get_city_5["city"], "temp" => get_city_5["temp"]} if (get_weather_5 == "Clear") && get_city_5["temp"].between?(r1,r2)   

    data2 = []

    data2 << {"city" => get_city_1["city"], "temp" => get_city_1["temp"]} if (get_weather_1 == "Clouds") && get_city_1["temp"].between?(r1,r2)
    data2 << {"city" => get_city_2["city"], "temp" => get_city_2["temp"]} if (get_weather_2 == "Clouds") && get_city_2["temp"].between?(r1,r2)
    data2 << {"city" => get_city_3["city"], "temp" => get_city_3["temp"]} if (get_weather_3 == "Clouds") && get_city_3["temp"].between?(r1,r2)
    data2 << {"city" => get_city_4["city"], "temp" => get_city_4["temp"]} if (get_weather_4 == "Clouds") && get_city_4["temp"].between?(r1,r2)
    data2 << {"city" => get_city_5["city"], "temp" => get_city_5["temp"]} if (get_weather_5 == "Clouds") && get_city_5["temp"].between?(r1,r2)    

    @recommended_city = ''

    if data1.empty?
      arr1 = []
      final_weather = data2.max_by { |x| x["temp"].to_f}
      @recommended_city = final_weather["city"]
    else
      arr2 = []
      final_weather2 = data1.max_by { |x| x["temp"].to_f}
      @recommended_city = final_weather2["city"]  
    end 
    @weather_all_cities = [get_city_1, get_city_2, get_city_3, get_city_4, get_city_5]

  
end
end