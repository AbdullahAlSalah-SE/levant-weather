//* imports
import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:developer' as dev;
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../utils/lang/app_lang_key.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart' hide Trans;
import 'dart:async';
// import 'dart:ffi';
import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:developer' as dev;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:lottie/lottie.dart';
// import 'package:weather/weather.dart';

import 'package:flutter/foundation.dart';
import 'dart:math';
import '';
// import 'package:lamsz_quran_api/lamsz_quran_api.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

import 'dart:convert' as convert;

import 'package:easy_localization/easy_localization.dart' as localized;
import 'package:flutter/src/material/dropdown.dart';
// import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

//*controller
part '../controller/HomeController.dart';
//*manage theme
part '../manage-state/manage_theme.dart';
part '../manage-state/manage_c_or_f.dart';

//*service
part '../service/weather_service.dart';
//*models
// part '../model/model_weather.dart';
part '../model/clouds.dart';
part '../model/sys.dart';
part '../model/weather.dart';
part '../model/wind.dart';
part '../model/five_days_data.dart';
part '../model/main_weather.dart';
part '../model/coord.dart';
part '../model/current_weather_data.dart';
// part '../model/current_weather_data.dart';

//*api
part '../api/api.dart';
part '../api/api_repository.dart';

part '../api/api_key.dart';
part '../api/api_handler.dart';

//*widgets
part '../widget/my_chart.dart';
part '../widget/MyCard.dart';
part '../widget/myList.dart';
part '../widget/drawer/drawer_body.dart';
part '../widget/drawer/profile/drawer_profile.dart';
part '../widget/drawer/settings/drawer_settings.dart';
part '../widget/drawer/settings/drawer_design_settings.dart';
part '../widget/drawer/settings/theme/drawe_theme.dart';
part '../widget/drawer/settings/lang/drawer_lang.dart';
part '../widget/drawer/settings/drawer_background.dart';
part '../widget/drawer/settings/theme/tempture.dart';
//* utils
part '../utils/lang/app_lang_config.dart';
part '../utils/lang/app_lang.dart';
part '../utils/theme/app_colors.dart';
part '../utils/constant/app_images.dart';
part '../utils/constant/app_icons.dart';
part '../utils/constant/app_lottie_json_assets.dart';
part '../dime/app_dime.dart';
part '../routes/app_routes.dart';
part '../utils/theme/app_theme_choose.dart';
part '../utils/theme/app_theme.dart';
part '../utils/restart/app_restart.dart';
part '../utils/svg/app_svg.dart';
part '../utils/constant/app_lists.dart';

//* views
part '../views/splash_screen.dart';
part '../views/home_screen.dart';
part '../views/aboutscreen.dart';
//*binding
part '../views/HomeBinding.dart';

//* main
part '../main_app.dart';
