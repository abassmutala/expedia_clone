import 'package:flutter/material.dart';

import '../constants/route_names.dart';
import '../views/main_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // get arguments passed in when we call navigator.pushNamed
  final args = settings.arguments;
  switch (settings.name) {
    case expediaMainScreenRoute:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const ExpediaMainScreen(),
      );
    // case forgotPasswordRoute:
    //   if (args is String) {
    //     return _getPageRoute(
    //       routeName: settings.name!,
    //       viewToShow: ForgotPassword(initialEmail: args),
    //     );
    //   }
    //   return _errorRoute();
    // case hotelDetailsRoute:
    //   final HotelDetailsArguments args =
    //       settings.arguments as HotelDetailsArguments;
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: HotelDetailsView(
    //       selectedHotel: args,
    //     ),
    //   );
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: const Text(''),
          ),
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

PageRoute _getPageRoute(
    {required String routeName, required Widget viewToShow}) {
  return MaterialPageRoute(
    settings: RouteSettings(
      name: routeName,
    ),
    builder: (_) => viewToShow,
  );
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(
    builder: (_) => Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: const Center(
        child: Text('ERROR'),
      ),
    ),
  );
}
