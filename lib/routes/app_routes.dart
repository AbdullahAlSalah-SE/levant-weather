part of '../../imports/app_imports.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> route = {
    Splash_Page.routename: (context) => Splash_Page(),
    Home_page.routename: (context) => Home_page(),
  };
}
