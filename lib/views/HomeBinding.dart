part of '../imports/app_imports.dart';

class HomeBinding implements Bindings {
  final BuildContext context;
  HomeBinding(this.context);

  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(context, city: 'amman'));
  }
}
