
XING Ruby on Rails Coding Challenge


Welcome to the coding challenge.

Welcome to the XING Coding Challenge! This challenge will give us an idea about your coding skills. You get access to this repository for 24 hours. Please plan around 3 hours for this challenge.

Prerequisites
--------------

- Important for us is code efficiency, following of best practices & code readability
- Please don't use scaffolding
- Do not focus too much on the design
- The usage of third party libraries is explicitly allowed
- Provide a comprehensive git history
- Commit directly to master and do not open a PR, then we can efficiently transfer the repo back to our GitHub Enterprise

Goals
-----

- Please create a very simple web application in Ruby on Rails 4 or 5. 
- The application should compare the current weather of 5 cities of your choice (fine to hard-wire the cities) and makes a recommendation, which of the cities currently has the best weather. 
- Feel free to add a readme that describes how your app works and what things you would add/change/do differently if you were given more time. 

Bonus Goals
------------

- Provide a basic set of meaningful tests
- Add a UI for users to set the compared cities (2-5)

Hints
------

- OpenWeatherMap has an API to get the current weather: https://openweathermap.org/current

--------------------

Solution:
-------------------
1. Ruby Version:2.3.3
2. Rails Version: 5.1.5
3. Open Weather API Key (http://home.openweathermap.org/users/sign_up)
4. Open Weather API Reference


Setup Locally
-----------
Clone Repo:
(https://github.com/colinxchristmas/forecaster.git)

Change dir into test_ruby_weather-MayuriVarade:
- cd test_ruby_weather-MayuriVarade

Install Gems:
- bundle install

Start the server and navigate to (http://localhost:3000/):
-rails s

Testing:
-As this was a rather quick turn around time I haven't implemented any tests.

How it works:
-Firstly pulled the data from Open Weather API.Took 4-5 parameters for testing the data and putting it in the readable form.
Logic developed for Best city among the 5 cities depending upon the Weather Condions and Temperature parameter.


Further features can be added:
1. Search feature
2. Map can be added
3. App can be build without using gem and writing services from scratch.
