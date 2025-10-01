import 'package:flutter_application_1/routes/routes.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashscreenController extends GetxController{
  @override
  void onInit() {
    super.onInit();

  }
  checkLogin() async {
     final prefs = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 3));
    if (prefs.getString("username") != null) {
     Get.offAllNamed(AppRoutes.navpage);
    } else {
      Get.offAllNamed(AppRoutes.loginpage);
      //route belum jadi
}

  }
}