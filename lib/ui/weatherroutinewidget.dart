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
                children: [
                  Expanded(
                      child: Center(
                          child: Text(
                    "Time",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ))),
                ],
              ),
              Divider(),
              Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: times.length,
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemBuilder: (context, index) {
                      return Center(child: Text(times[index]));
                    }),
              ),
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
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),

                        // height: 45,
                        width: 110,
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                days[index],
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Divider(),
                            Expanded(
                              child: ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: times.length,
                                  separatorBuilder: (context, index) {
                                    return Divider();
                                  },
                                  itemBuilder: (context, index) {
                                    return Center(
                                        child:
                                            Text(times[index] + "\u{00B0}C"));
                                  }),
                              // child: ListView(
                              //   physics: BouncingScrollPhysics(),
                              //   scrollDirection: Axis.vertical,
                              //   shrinkWrap: true,
                              //   children: [
                              //     Center(child: Text("26\u{00B0}C")),
                              //     Divider(),
                              //     Center(child: Text("18\u{00B0}C")),
                              //     Divider(),
                              //     Center(child: Text("11\u{00B0}C")),
                              //     Divider(),
                              //     Center(child: Text("13\u{00B0}C")),
                              //     Divider(),
                              //     Center(child: Text("25\u{00B0}C")),
                              //     Divider(),
                              //     Center(child: Text("19\u{00B0}C")),
                              //     Divider(),
                              //     Center(child: Text("24\u{00B0}C")),
                              //     Divider(),
                              //   ],
                              // ),
                            )
                          ],
                        ),
                      ),
                    );
                  }))),
      Constants.verticalspace,
    ]);
  }
}
