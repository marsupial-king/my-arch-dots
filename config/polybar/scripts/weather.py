import requests
import moon

ZIP = ""
# or you can use city name
# CITY = ""
API_KEY = ""
UNITS = "Metric"

def get_moon_phase():
    icon = moon.main()
    return icon

res = requests.get("http://api.openweathermap.org/data/2.5/weather?zip={}&appid={}&units={}".format(ZIP, API_KEY, UNITS))
weather_data = res.json()
icon_map = {"01d" : "", "02d": "", "03d": "",
            "04d": "", "09d": "", "10d": "",
            "11d": "", "13d": "", "50d": "",
            "01n": "", "02n": "", "03n": "",
            "04n": "", "09n": "", "10n": "",
            "11n": "", "13n": "", "50n": ""}


if weather_data["cod"] == 200:
    temp = int(weather_data["main"]["temp"])
    icon = weather_data["weather"][0]["icon"]
    if icon == "01n":
        icon = get_moon_phase()
    else:
        icon = icon_map[icon]
    desc = weather_data["weather"][0]["description"]

    print("{}°C {} {}".format(temp, desc, icon))


