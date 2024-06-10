import 'package:weather_app/headers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await WeatherApi.instance.getWeather();

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => WeatherController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
