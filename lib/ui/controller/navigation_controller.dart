import 'package:get/get.dart';

class NavigationController extends GetxController {
  int selectedNav = 0;

  void changeNav(int index) {
    selectedNav = index;
    update();
  }
}
