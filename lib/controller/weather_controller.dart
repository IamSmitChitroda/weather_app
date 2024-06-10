import 'package:weather_app/headers.dart';

class WeatherController extends ChangeNotifier {
  List weatherData = [];
  Logger logger = Logger();

  WeatherController() {
    getWeatherData();
  }

  Future<void> getWeatherData() async {
    weatherData = await WeatherApi.instance.getWeather();
    notifyListeners();
  }

  Future<void> getWeatherData2() async {
    weatherData.insertAll(2, await WeatherApi.instance.getWeather());
    notifyListeners();
  }
}
