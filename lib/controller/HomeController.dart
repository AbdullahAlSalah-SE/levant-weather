part of '../imports/app_imports.dart';

class HomeController extends GetxController {
  String? city;
  String? searchText;
  final BuildContext context;

  CurrentWeatherData currentWeatherData = CurrentWeatherData();
  List<CurrentWeatherData> dataList = [];
  List<CurrentWeatherData> dataList_syria = [];
  List<CurrentWeatherData> dataList_lebanon = [];
  List<CurrentWeatherData> dataList_palestine = [];

  List<FiveDayData> fiveDaysData = [];

  HomeController(this.context, {required this.city});

  @override
  void onInit() {
    initState();
    getTopFiveCities();
    getTopFiveCities_Syria();
    getTopFiveCities_lebanon();
    getTopFiveCities_palestine();

    super.onInit();
  }

  void dispose() {
    //textFiledName
    getTopFiveCities();
    getTopFiveCities_Syria();
    getTopFiveCities_lebanon();
    getTopFiveCities_palestine();
    super.dispose();
  }

  void updateWeather() {
    initState();
  }

  void initState() {
    getCurrentWeatherData();
    getFiveDaysData();
  }

  void getCurrentWeatherData() {
    WeatherService(context, city: '$city').getCurrentWeatherData(
        onSuccess: (data) {
          currentWeatherData = data;
          update();
        },
        onError: (error) => {
              print(error),
              update(),
            });
  }

  void getTopFiveCities() {
    List<String> cities = [
      'amman',
      'salt',
      'zarqa',
      'irbid',
      'al karak',
      'aqaba',
      'ma\'an'
          'ajloun',
      'mafraq',
    ];

    cities.forEach((c) {
      WeatherService(context, city: '$c').getCurrentWeatherData(
          onSuccess: (data) {
        dataList.add(data);
        update();
      }, onError: (error) {
        print(error);
        update();
      });
    });
  }

  void getTopFiveCities_Syria() {
    List<String> cities2 = [
      'Aleppo',
      'Damascus',
      'Hama',
      'Homs',
      'Latakia',
    ];

    cities2.forEach((c) {
      WeatherService(context, city: '$c').getCurrentWeatherData(
          onSuccess: (data) {
        dataList_syria.add(data);
        update();
      }, onError: (error) {
        print(error);
        update();
      });
    });
  }

  void getTopFiveCities_lebanon() {
    List<String> cities2 = [
      'Mount Lebanon',
      'Beirut',
      'Zghartā',
      'Baalbek',
      'Keserwan',
    ];

    cities2.forEach((c) {
      WeatherService(context, city: '$c').getCurrentWeatherData(
          onSuccess: (data) {
        dataList_lebanon.add(data);
        update();
      }, onError: (error) {
        print(error);
        update();
      });
    });
  }

  void getTopFiveCities_palestine() {
    List<String> cities2 = [
      'Jenin',
      'Ramallah',
      'Gaza',
      'Nablus',
      'Jericho',
      'Bethlehem',
      'Hebron',
      'Tubas',
      'Tulkarm',
      'Qalqilya',
      'Salfit',
    ];

    cities2.forEach((c) {
      WeatherService(context, city: '$c').getCurrentWeatherData(
          onSuccess: (data) {
        dataList_palestine.add(data);
        update();
      }, onError: (error) {
        print(error);
        update();
      });
    });
  }

  void getFiveDaysData() {
    WeatherService(context, city: '$city').getFiveDaysThreeHoursForcastData(
        onSuccess: (data) {
      fiveDaysData = data;
      update();
    }, onError: (error) {
      print(error);
      update();
    });
  }
}
