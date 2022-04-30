import 'package:get/get.dart';

class ThemeController extends GetxController {
  var isDark = false.obs;

  void changeTheme() {
    isDark.value = !isDark.value;
  }
}
