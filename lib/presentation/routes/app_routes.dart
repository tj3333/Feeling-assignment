import 'package:get/get.dart';
import 'package:tejas_s_application1/binding/feeling_binding.dart';
import 'package:tejas_s_application1/presentation/pages/feeling/feeling_screen.dart';

class AppRoutes {
  static String feelingScreen = '/feeling_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: feelingScreen,
      page: () => FeelingsScreen(),
      bindings: [
        FeelingBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => FeelingsScreen(),
      bindings: [
        FeelingBinding(),
      ],
    )
  ];
}
