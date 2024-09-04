import 'package:get/get.dart';

import '../modules/AllCoffe/bindings/all_coffe_binding.dart';
import '../modules/AllCoffe/views/all_coffe_view.dart';
import '../modules/ManualBrew/bindings/manual_brew_binding.dart';
import '../modules/ManualBrew/views/manual_brew_view.dart';
import '../modules/MilkBase/bindings/milk_base_binding.dart';
import '../modules/MilkBase/views/milk_base_view.dart';
import '../modules/Tea/bindings/tea_binding.dart';
import '../modules/Tea/views/tea_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.ALL_COFFE,
      page: () => const AllCoffeView(),
      binding: AllCoffeBinding(),
    ),
    GetPage(
      name: _Paths.MILK_BASE,
      page: () => const MilkBaseView(),
      binding: MilkBaseBinding(),
    ),
    GetPage(
      name: _Paths.MANUAL_BREW,
      page: () => const ManualBrewView(),
      binding: ManualBrewBinding(),
    ),
    GetPage(
      name: _Paths.TEA,
      page: () => const TeaView(),
      binding: TeaBinding(),
    ),
  ];
}
