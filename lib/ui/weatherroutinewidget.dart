import 'package:flutter/material.dart';
import 'package:weatherapp/constants.dart';

class WeatherRoutine extends StatelessWidget {
  WeatherRoutine({Key? key}) : super(key: key);
  List<String> days = [
    "Today",
    "Tomorrow",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ];
  List<String> times = [
    "11:00-12:00",
    "11:00-12:00",
    "11:00-12:00",
    "11:00-12:00",
    "11:00-12:00",
    "11:00-12:00",
    "11:00-12:00"
  ];
  List<double> temperaturevalues = [20, 20, 22, 33, 44, 55, 66];

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Constants.verticalspace,
      Expanded(
        flex: 1,
        child: Container(
          height: 180,
          child: Column(
            children: [
              Row(
                children: const [
                  Expanded(
                      child: Center(
                          child: Text(
                    "Time",
                    style: Constants.weatherroutinetexttitletextstyle,
                  ))),
                ],
              ),
              Constants.horizontaldivider,
              Expanded(
                  child: RoutineWidgets(
                caller: "time",
                data: times,
              )),
            ],
          ),
        ),
      ),
      VerticalDivider(),
      Expanded(
          flex: 3,
          child: Container(
              height: 180,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: days.length,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: Constants
                            .symmetricpaddingoutsidecontainerhorizontal,
                        child: Container(
                          padding: Constants
                              .symmetricpaddinginsidecontainerhorizontal,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.black12),
                              borderRadius: Constants.borderradius),
                          width: 110,
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  days[index],
                                  style: Constants
                                      .weatherroutinetexttitletextstyle,
                                ),
                              ),
                              Constants.horizontaldivider,
                              Expanded(
                                  child: RoutineWidgets(
                                caller: "temperature",
                                data: temperaturevalues,
                              ))
                            ],
                          ),
                        ));
                  }))),
      Constants.verticalspace,
    ]);
  }
}

class RoutineWidgets extends StatelessWidget {
  final caller;
  final data;
  const RoutineWidgets({Key? key, this.data, this.caller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: data.length,
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemBuilder: (context, index) {
          return Center(
              child: Text(
                  caller == "time" ? data[index] : data[index] + "\u{00B0}C"));
        });
  }
}
