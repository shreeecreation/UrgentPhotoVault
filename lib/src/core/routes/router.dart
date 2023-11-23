import 'package:get/get.dart';
import 'package:urgentvault/src/features/home_page/presentation/pages/home_page.dart';

class AllRoutes {
  AllRoutes._();

  static void routeToHomePage() {
    Get.offAll(() => const HomePage());
  }
}
