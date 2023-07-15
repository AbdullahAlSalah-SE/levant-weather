part of '../imports/app_imports.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});
  static const routename = "/Home";

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 1. Using Timer
    Timer(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });

    // 2. Future.delayed
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  void dispose() {
    //textFiledName
    HomeController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer_body(),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: GetBuilder<HomeController>(builder: (controller) {
          return Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 330,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter:
                          ColorFilter.mode(Colors.black38, BlendMode.darken),
                      image: AssetImage(
                        'assets/images/Splash_Background.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(
                        child: AppBar(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          leading: IconButton(
                              icon: Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              onPressed: () =>
                                  _scaffoldKey.currentState?.openDrawer()),
                        ),
                      ),

                      //TODO
                      Container(
                        padding: EdgeInsets.only(top: 110, left: 10, right: 10),
                        child: TextField(
                          onChanged: (value) => controller.city = value,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textInputAction: TextInputAction.search,
                          onSubmitted: (value) => controller.updateWeather(),
                          decoration: InputDecoration(
                            suffix: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            hintStyle: TextStyle(color: Colors.white),
                            hintText: AppLangKey.search.tr().toUpperCase(),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        // alignment: Alignment(0.0, 1.0),
                        top: 300,
                        child: SizedBox(
                          height: 10,
                          width: 10,
                          child: OverflowBox(
                            minWidth: 0.0,
                            maxWidth: MediaQuery.of(context).size.width,
                            minHeight: 0.0,
                            maxHeight: (MediaQuery.of(context).size.height / 4),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Card(
                                    // color: Colors.white,
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        //TODO
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 20, right: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Center(
                                                child: Text(
                                                  '${controller.currentWeatherData.name}'
                                                      .toUpperCase(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption!
                                                      .copyWith(
                                                        //color: Colors.black45,
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily:
                                                            'flutterfonts',
                                                      ),
                                                ),
                                              ),
                                              Center(
                                                child: Text(
                                                  DateFormat()
                                                      .add_MMMMEEEEd()
                                                      .format(DateTime.now()),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption!
                                                      .copyWith(
                                                        // //color: Colors.black45,
                                                        fontSize: 16,
                                                        fontFamily:
                                                            'flutterfonts',
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(),
                                        //TODO
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 20),
                                              child: Column(
                                                children: <Widget>[
                                                  Text(
                                                    '${controller.currentWeatherData.weather?[0].description}',
                                                    //'desc',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .caption!
                                                        .copyWith(
                                                          //color: Colors.black45,
                                                          fontSize: 22,
                                                          fontFamily:
                                                              'flutterfonts',
                                                        ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    // '${((controller.currentWeatherData.main?.temp ?? 0) - 273.15).round().toString()}\u2103',
                                                    // '${Manage_Tempture.conv_to_fahrenheit(${((controller.currentWeatherData.main?.temp ?? 0) - 273.15).round().toString()})} ${Manage_Tempture.temp_mark}',
                                                    '${Manage_Tempture.conv_to_fahrenheit(((controller.currentWeatherData.main?.temp ?? 0) - 273.15).round().toString())} ${Manage_Tempture.temp_mark}',

                                                    // 'round',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline2!
                                                        .copyWith(
                                                            fontSize:
                                                                AppDime.md_14,
                                                            // color:
                                                            //     Colors.black45,
                                                            fontFamily:
                                                                'flutterfonts'),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    'min: ${Manage_Tempture.conv_to_fahrenheit(((controller.currentWeatherData.main?.tempMin ?? 0) - 273.15).round().toString())} ${Manage_Tempture.temp_mark} / max: ${Manage_Tempture.conv_to_fahrenheit(((controller.currentWeatherData.main?.tempMax ?? 0) - 273.15).round().toString())} ${Manage_Tempture.temp_mark}',
                                                    // 'min max',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .caption!
                                                        .copyWith(
                                                          //color: Colors.black45,
                                                          fontSize:
                                                              AppDime.md_14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontFamily:
                                                              'flutterfonts',
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 20),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: <Widget>[
                                                  SizedBox(
                                                    width: 90,
                                                    height: 80,
                                                    child: LottieBuilder.asset(
                                                        "${Applists.light_mode_weather_states_lotti[0]['${controller.currentWeatherData.weather?[0].description}'] ?? Applists.light_mode_weather_states_lotti[0]['haze']}"),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      '${AppLangKey.wind.tr()}: ${controller.currentWeatherData.wind?.speed} m/s',
                                                      // 'wind value',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .caption!
                                                          .copyWith(
                                                            // color:
                                                            // Colors.black45,
                                                            fontSize:
                                                                AppDime.md_14,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily:
                                                                'flutterfonts',
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: Container(
                        padding: EdgeInsets.only(top: 120),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  AppLangKey.other_cities.tr().toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                        fontSize: 16,
                                        fontFamily: 'flutterfonts',
                                        // //color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              MyList(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        AppLangKey.forcast_v_Days.tr().toUpperCase(),
                        style: Theme.of(context).textTheme.caption!.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              // //color: Colors.black45,
                            ),
                      ),
                      Icon(
                        Icons.next_plan_outlined,
                        // //color: Colors.black45,
                      ),
                    ],
                  ),
                ),
                MyChart(),
                SizedBox(
                  height: AppDime.xlg,
                )
              ]);
        }),
      ),
    );
  }
}
