import 'package:weather_app/headers.dart';

Widget searchGridView({required Size size}) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            searchFeelsLikeGrid(size: size),
            searchwindGrid(size: size),
          ],
        ),
        SizedBox(height: size.height * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            searchHumidtyGrid(size: size),
            searchUvGrid(size: size),
          ],
        ),
        SizedBox(height: size.height * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            searchVisibilityGrid(size: size),
            searchAirPresureGrid(size: size),
          ],
        ),
        SizedBox(height: size.height * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            searchWindDirectionGrid(size: size),
            searchWindDirectionGrid(size: size),
          ],
        ),
      ],
    );
