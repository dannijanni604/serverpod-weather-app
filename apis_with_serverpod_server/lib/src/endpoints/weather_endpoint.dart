import 'package:serverpod/serverpod.dart';

class WeatherEndpoint extends Endpoint {
  Future<double> getWeather(Session session, String city) async {
    return 22.0;
  }
}
