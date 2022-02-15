import 'package:flutter/material.dart';

import '../models/weather_forecast.dart';
import '../utilities/forecast_util.dart';

Widget weatherCardHourly(WeatherForecast state, int index) {
  var forecastList = state.list;
  var dayOfTheWeek = '';
  DateTime date =
      DateTime.fromMillisecondsSinceEpoch(forecastList[index].dt * 1000);
  var fullDate = Util.getFormattedDate(date);
  var temperature = forecastList[index].temp.day.floorToDouble().toInt();
  var icon = forecastList[index].getIconUrl();
  dayOfTheWeek = fullDate.split(',')[0];

  return SingleChildScrollView(
    child: Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              dayOfTheWeek,
              style: const TextStyle(
                  fontSize: 27,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              icon,
              scale: 1.0,
            ),
            Text(
              '$temperature ℃',
              style: TextStyle(
                fontSize: 25.0,
                color: temperature <= 0 ? Colors.blue[700] : Colors.orange[700],
              ),
            ),
          ],
        )
      ],
    ),
  );
}