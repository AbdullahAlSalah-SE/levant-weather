part of '../../imports/app_imports.dart';

class Manage_Tempture extends ChangeNotifier {
  /// [tempture] = false mean it will be c
  ///[tempture]= true means it will be f
  ///
  static bool tempture = false;
  static String temp_mark = '\u2103';

  ///[updatetheme] change the value of the switch for dark mod
  updateTemp(bool value) {
    tempture = value;
    temp_mark = tempture ? "\u2109" : "\u2103";

    notifyListeners();
  }

  static bool isFahrenheit(BuildContext context) => temp_mark == "\u2109";

  static String conv_to_fahrenheit(String string_value) {
    double d_value = double.parse(string_value.toString());

    double temp = tempture ? (d_value * 9 / 5) + 32 : d_value;
    String temp_value = '$temp';
    return temp_value;
  }
  //change the mod
}
