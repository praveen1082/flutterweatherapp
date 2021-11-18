import 'package:flutter/material.dart';
import 'package:weatherapp/constants.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Constants.verticalspace,
        Expanded(
          child: Container(
            height: 100,
            child: Column(
              children: const [
                Text(
                  "28\u{00B0}C",
                  style: TextStyle(
                      fontSize: Constants.degreetextfontsize,
                      fontWeight: Constants.mainpagetitlefontweight),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Cloudy",
                  style: TextStyle(
                      fontSize: Constants.subtextsbelowdegreefontsize,
                      fontWeight: Constants.mainpagetitlefontweight),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Kathmandu, Nepal",
                  style: TextStyle(
                      fontSize: Constants.subtextsbelowdegreefontsize,
                      fontWeight: Constants.mainpagetitlefontweight),
                ),
              ],
            ),
          ),
        ),
        Constants.verticalspace,
      ],
    );
  }
}
