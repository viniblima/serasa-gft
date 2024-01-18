import 'package:get/state_manager.dart';

class HomeControllerX extends GetxController {
  final RxBool _loading = RxBool(true);

  RxBool get loading => _loading;

  set updateLoading(bool data) {
    _loading.value = data;
    update();
  }
}
