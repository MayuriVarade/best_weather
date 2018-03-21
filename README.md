
1. Ruby Version:2.3.3
2. Rails Version: 5.1.5
3. Open Weather API Key (http://home.openweathermap.org/users/sign_up)
4. Open Weather API Reference


Setup Locally
-----------
Clone Repo:
(https://github.com/colinxchristmas/forecaster.git)

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
