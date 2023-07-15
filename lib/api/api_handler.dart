part of '../imports/app_imports.dart';

abstract class ApiHandle {
  // * get  Weather_info app as List
  Future<CurrentWeatherData?> get_cur_Weather_info(BuildContext context);

  Future<FiveDayData?> get_last_vdays_Weather_info(BuildContext context);
}
