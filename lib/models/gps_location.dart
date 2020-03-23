import 'package:weather/helpers/api.dart';
import 'package:weather/models/location.dart';



const apiKey = 'dd409dab4dc833adb35fc0cb9d656b43';
const base = 'https://api.openweathermap.org/data/2.5/weather'; 

class GpsLocation{
  Future<dynamic> getGpsLocation() async{
     Location location = Location();

    await location.getCurrentLocation();
 
    ApiHelper apiHelper = ApiHelper(
        '$base?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
    var weatherData = await apiHelper.getData();
    print(weatherData);
    return weatherData;
  }
}