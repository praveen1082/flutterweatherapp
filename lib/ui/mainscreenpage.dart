import 'package:flutter/material.dart';
import 'package:weatherapp/constants.dart';
import 'package:weatherapp/ui/weatherwidget.dart';

class MainPageScreen extends StatelessWidget {
  MainPageScreen({Key? key}) : super(key: key);
  List<String> days = [
    "Today",
    "Tomorrow",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Constants.scaffoldcolor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: Constants.scaffoldcontainerdecoration,
        child: ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          children: [
            Constants.horizontalspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Constants.verticalspace,
                Expanded(
                  child: Text(Constants.mainpagetitle,
                      style: TextStyle(
                          fontSize: Constants.mainpagetitlefontsize,
                          fontWeight: Constants.mainpagetitlefontweight)),
                ),
                Constants.verticalspace,
                Constants.verticalspace,
                Icon(
                  Icons.refresh,
                  size: Constants.refreshiconsize,
                ),
                Constants.verticalspace,
              ],
            ),
            Constants.divider,
            Row(
              children: [
                Constants.verticalspace,
                Expanded(
                  child: Container(
                    height: Constants.weathericoncontainerheight,
                    child: Center(
                      child: Image.network(
                          "https://www.shareicon.net/data/512x512/2016/08/01/640233_cloud_512x512.png",
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                Constants.verticalspace,
              ],
            ),
            Constants.horizontalspace,
            WeatherWidget(),
            Constants.horizontalspace,
            Constants.horizontalspace,
            Divider(),
            Constants.horizontalspace,
            Row(children: [
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
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ))),
                        ],
                      ),
                      Divider(),
                      Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          children: [
                            Center(child: Text("11:00 - 12:00")),
                            Divider(),
                            Center(child: Text("11:00 - 12:00")),
                            Divider(),
                            Center(child: Text("11:00 - 12:00")),
                            Divider(),
                            Center(child: Text("11:00 - 12:00")),
                            Divider(),
                            Center(child: Text("11:00 - 12:00")),
                            Divider(),
                            Center(child: Text("11:00 - 12:00")),
                            Divider(),
                            Center(child: Text("11:00 - 12:00")),
                            Divider(),
                          ],
                        ),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: Colors.black12),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),

                                // height: 45,
                                width: 110,
                                child: Column(
                                  children: [
                                    Center(
                                      child: Text(
                                        days[index],
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Divider(),
                                    Expanded(
                                      child: ListView(
                                        physics: BouncingScrollPhysics(),
                                        scrollDirection: Axis.vertical,
                                        shrinkWrap: true,
                                        children: [
                                          Center(child: Text("26\u{00B0}C")),
                                          Divider(),
                                          Center(child: Text("18\u{00B0}C")),
                                          Divider(),
                                          Center(child: Text("11\u{00B0}C")),
                                          Divider(),
                                          Center(child: Text("13\u{00B0}C")),
                                          Divider(),
                                          Center(child: Text("25\u{00B0}C")),
                                          Divider(),
                                          Center(child: Text("19\u{00B0}C")),
                                          Divider(),
                                          Center(child: Text("24\u{00B0}C")),
                                          Divider(),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }))),
              Constants.verticalspace,
            ]),
            Constants.horizontalspace,
            Divider(),
            Constants.horizontalspace,
            Row(
              children: [
                Constants.verticalspace,
                Text(
                  "Chances of rain",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                )
              ],
            ),
            Constants.horizontalspace,
            Container(
              height: 300,
              color: Colors.green,
            )
          ],
        ),
      ),
    ));
  }
}
