import 'package:get/get.dart';

class NotesController extends GetxController {
  Rx<bool> obscureText = true.obs;
  Rx<bool> obscureText1 = true.obs;
  Rx<int> selectedIndex = 0.obs;
  RxList<Map<String, String>> notesList = <Map<String,String>>[].obs;


  void togglePassword() {
    obscureText.value = !obscureText.value;
  }

  void togglePassword1() {
    obscureText1.value = !obscureText1.value;
  }
}
