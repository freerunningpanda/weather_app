class Constants {
  static const String weatherAppId = '1369dd6b5ae78fc9952261ab9aa236b4';
  static const String weatherAppIdHourly = '37812953bdb750e43ba42db51ce6087b';
  static const String weatherBaseScheme = 'https://';
  static const String weatherBaseUrlDomain = 'api.openweathermap.org';
  static const String weatherForecastPath = '/data/2.5/forecast/daily';
  static const String weatherForecastPathHourly = '/data/2.5/onecall';
  static const String weatherImagesPath = '/img/w/';
  static const String weatherImagesUrl =
      weatherBaseScheme + weatherBaseUrlDomain + weatherImagesPath;
  static const String weatherCityInfo = 'weatherCityInfo';
  static const String weatherDailyList = 'weatherDailyList';
  static const String weatherDailyDetailed = 'weatherDailyDetailed';
  static const String weatherHourlyList = 'weatherHourlyList';
  static const String weatherHourlyDetailed = 'weatherHourlyDetailed';
}

enum WeatherSettings { day, hour }
