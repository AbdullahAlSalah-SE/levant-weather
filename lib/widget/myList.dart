part of '../imports/app_imports.dart';

class MyList extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Column(
            children: [
              Container(
                // width: double.infinity,
                height: 400,
                child: LottieBuilder.asset(AppTheme.isDark(context)
                    ? App_lottie_images.black_back_for_countries
                    : App_lottie_images.white_back_for_countries),
              ),
              Container(
                // width: double.infinity,
                height: 400,
                child: LottieBuilder.asset(AppTheme.isDark(context)
                    ? App_lottie_images.black_back_for_countries
                    : App_lottie_images.white_back_for_countries),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: AppDime.md_10),
                child: Text(
                  AppLangKey.jordan.tr(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 170,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => VerticalDivider(
                    color: Colors.transparent,
                    width: 5,
                  ),
                  itemCount: controller.dataList.length,
                  itemBuilder: (context, index) {
                    CurrentWeatherData? data;
                    (controller.dataList.length > 0)
                        ? data = controller.dataList[index]
                        : data = null;
                    return Container(
                      width: 140,
                      height: 150,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                (data != null) ? '${data.name}' : '',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      // color: Colors.black45,
                                      fontFamily: 'flutterfonts',
                                    ),
                              ),
                              Text(
                                (data != null)
                                    ? '${Manage_Tempture.conv_to_fahrenheit((data.main!.temp! - 273.15).round().toString())} ${Manage_Tempture.temp_mark}'
                                    : '',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      // color: Colors.black45,
                                      fontFamily: 'flutterfonts',
                                    ),
                              ),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: LottieBuilder.asset(
                                    "${Applists.light_mode_weather_states_lotti[0]['${data?.weather![0].description}'] ?? Applists.light_mode_weather_states_lotti[0]['haze']}"),
                              ),
                              Text(
                                (data != null)
                                    ? '${data.weather![0].description}'
                                    : '',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      // color: Colors.black45,
                                      fontFamily: 'flutterfonts',
                                      fontSize: 14,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: AppDime.md_10),
                child: Text(
                  AppLangKey.syria.tr(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 170,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => VerticalDivider(
                    color: Colors.transparent,
                    width: 5,
                  ),
                  itemCount: controller.dataList_syria.length,
                  itemBuilder: (context, index) {
                    CurrentWeatherData? data;
                    (controller.dataList_syria.length > 0)
                        ? data = controller.dataList_syria[index]
                        : data = null;
                    return Container(
                      width: 140,
                      height: 150,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                (data != null) ? '${data.name}' : '',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      // color: Colors.black45,
                                      fontFamily: 'flutterfonts',
                                    ),
                              ),
                              Text(
                                (data != null)
                                    ? '${Manage_Tempture.conv_to_fahrenheit((data.main!.temp! - 273.15).round().toString())} ${Manage_Tempture.temp_mark}'
                                    : '',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      // color: Colors.black45,
                                      fontFamily: 'flutterfonts',
                                    ),
                              ),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: LottieBuilder.asset(
                                    "${Applists.light_mode_weather_states_lotti[0]['${data?.weather![0].description}'] ?? Applists.light_mode_weather_states_lotti[0]['haze']}"),
                              ),
                              Text(
                                (data != null)
                                    ? '${data.weather![0].description}'
                                    : '',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      // color: Colors.black45,
                                      fontFamily: 'flutterfonts',
                                      fontSize: 14,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: AppDime.md_10),
                child: Text(
                  AppLangKey.lebanon.tr(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 170,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => VerticalDivider(
                    color: Colors.transparent,
                    width: 5,
                  ),
                  itemCount: controller.dataList_lebanon.length,
                  itemBuilder: (context, index) {
                    CurrentWeatherData? data;
                    (controller.dataList_lebanon.length > 0)
                        ? data = controller.dataList_lebanon[index]
                        : data = null;
                    return Container(
                      width: 140,
                      height: 150,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                (data != null) ? '${data.name}' : '',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      // color: Colors.black45,
                                      fontFamily: 'flutterfonts',
                                    ),
                              ),
                              Text(
                                (data != null)
                                    ? '${Manage_Tempture.conv_to_fahrenheit((data.main!.temp! - 273.15).round().toString())} ${Manage_Tempture.temp_mark}'
                                    : '',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      // color: Colors.black45,
                                      fontFamily: 'flutterfonts',
                                    ),
                              ),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: LottieBuilder.asset(
                                    "${Applists.light_mode_weather_states_lotti[0]['${data?.weather![0].description}'] ?? Applists.light_mode_weather_states_lotti[0]['haze']}"),
                              ),
                              Text(
                                (data != null)
                                    ? '${data.weather![0].description}'
                                    : '',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      // color: Colors.black45,
                                      fontFamily: 'flutterfonts',
                                      fontSize: 14,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: AppDime.md_10),
                child: Text(
                  AppLangKey.palestine.tr(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 170,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => VerticalDivider(
                    color: Colors.transparent,
                    width: 5,
                  ),
                  itemCount: controller.dataList_palestine.length,
                  itemBuilder: (context, index) {
                    CurrentWeatherData? data;
                    (controller.dataList_palestine.length > 0)
                        ? data = controller.dataList_palestine[index]
                        : data = null;
                    return Container(
                      width: 140,
                      height: 150,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                (data != null) ? '${data.name}' : '',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      // color: Colors.black45,
                                      fontFamily: 'flutterfonts',
                                    ),
                              ),
                              Text(
                                (data != null)
                                    ? '${Manage_Tempture.conv_to_fahrenheit((data.main!.temp! - 273.15).round().toString())} ${Manage_Tempture.temp_mark}'
                                    : '',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      // color: Colors.black45,
                                      fontFamily: 'flutterfonts',
                                    ),
                              ),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: LottieBuilder.asset(
                                    "${Applists.light_mode_weather_states_lotti[0]['${data?.weather![0].description}'] ?? Applists.light_mode_weather_states_lotti[0]['haze']}"),
                              ),
                              Text(
                                (data != null)
                                    ? '${data.weather![0].description}'
                                    : '',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      // color: Colors.black45,
                                      fontFamily: 'flutterfonts',
                                      fontSize: 14,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
