import 'package:weather_app/headers.dart';

class Routes {
  Routes._();
  static final Routes instance = Routes._();

  String homepage = '/';
  String searchPage = 'sp';

  Map<String, WidgetBuilder> route = {
    '/': (context) => const HomePage(),
    'sp': (context) => const SearchPage(),
  };
}
