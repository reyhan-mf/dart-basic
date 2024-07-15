import 'package:open_meteo/open_meteo.dart';

void main() async {
  var weather = AirQuality(latitude: 52.52, longitude: 13.41);
  var hourly = [Hourly.soil_temperature_7_to_28cm];
  var result = await weather.raw_request(hourly: hourly);
  print(result);
}