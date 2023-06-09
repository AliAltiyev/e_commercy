import '../details/deails_view.dart';
import '../home/home_view.dart';
import '../login/login_view.dart';
import '../onboarding/view/onboarding_view.dart';
import '../profile/profile_view.dart';
import '../register/register_view.dart';
import '../settings/settings_view.dart';
import '../../util/constants/string.dart';
import 'package:flutter/material.dart';

class RoutesManager {
  static const String registerPage = "/register";
  static const String loginPage = "/login";
  static const String onBoarding = "/onBoarding";
  static const String homePage = "/home";
  static const String settingPage = "/setting";
  static const String profilePage = "/profile";
  static const String detailsPage = "/details";
}

class Routes {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesManager.registerPage:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case RoutesManager.loginPage:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case RoutesManager.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case RoutesManager.homePage:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case RoutesManager.settingPage:
        return MaterialPageRoute(builder: (_) => const SettingsView());
      case RoutesManager.profilePage:
        return MaterialPageRoute(builder: (_) => const ProfileView());
      case RoutesManager.detailsPage:
        return MaterialPageRoute(builder: (_) => const DetailsView());
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundPage());
    }
  }
}

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Constants.pageNotFound),
      ),
      body: const Center(
        child: Text(Constants.notFoundPage),
      ),
    );
  }
}
