part of '../imports/app_imports.dart';

class Api extends ApiHandle {
  String city = '';
  final int timeOut = 100;

  @override
  Future<CurrentWeatherData?> get_cur_Weather_info(BuildContext context) async {
    try {
      // * URL
      Uri url = Uri.parse(
          '${ApiKey.baseApi}/weather?q=$city&lang=${AppLang.what_lang(context)}${ApiKey.api_id_key}');
      // * req get
      http.Response res =
          await http.get(url).timeout(Duration(seconds: timeOut));
      CurrentWeatherData? dataModel;
      if (res.statusCode == 200) {
        // * success
        // * body  string convert Json (Map)
        Map<String, dynamic> json = convert.jsonDecode(res.body);
        dataModel = CurrentWeatherData.fromJson(json);
      } else {
        dataModel = null;
        // throw 'no data fetch ';
        // * Error
        // AppToast.toast(AppLangKey.errorFetchData.tr());
      }
      return dataModel;
    } catch (error) {
      dev.log('error Fetch Data Social',
          name: 'Api Weather_info', error: error.toString());
    }
    return null;
  }

  Future<FiveDayData?> get_last_vdays_Weather_info(BuildContext context) async {
    try {
      // * URL
      Uri url = Uri.parse(
          '${ApiKey.baseApi}/forecast?q=$city&lang=${AppLang.what_lang(context)}${ApiKey.api_id_key}');
      // * req get
      http.Response res =
          await http.get(url).timeout(Duration(seconds: timeOut));
      CurrentWeatherData? dataModel;
      if (res.statusCode == 200) {
        // * success
        // * body  string convert Json (Map)
        Map<String, dynamic> json = convert.jsonDecode(res.body);
        dataModel = CurrentWeatherData.fromJson(json);
      } else {
        dataModel = null;
        // throw 'no data fetch ';
        // * Error
        // AppToast.toast(AppLangKey.errorFetchData.tr());
      }
      // return dataModel;
    } catch (error) {
      dev.log('error Fetch Data Social',
          name: 'Api Weather_info', error: error.toString());
    }
    return null;
  }
}
