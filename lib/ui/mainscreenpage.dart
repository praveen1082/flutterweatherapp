import 'package:flutter/material.dart';
import 'package:weatherapp/constants.dart';

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
                          //color: Colors.white,
                          fontSize: Constants.mainpagetitlefontsize,
                          fontWeight: Constants.mainpagetitlefontweight)),
                ),
                Constants.verticalspace,
                Constants.verticalspace,
                Icon(
                  Icons.refresh,
                  size: Constants.refreshiconsize,
                  //color: Colors.white,
                ),
                Constants.verticalspace,
              ],
            ),
            Constants.divider,
            // Constants.horizontalspace,
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
            Row(
              children: [
                Constants.verticalspace,
                Expanded(
                  child: Container(
                    height: 100,
                    //color: Colors.amberAccent,
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
            ),
            Constants.horizontalspace,

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     padding: EdgeInsets.symmetric(vertical: 5.0),
            //     decoration: BoxDecoration(
            //       border: Border.all(color: Colors.black54),
            //       borderRadius: BorderRadius.all(Radius.circular(8)),
            //     ),
            //     height: 180,
            //     child: Row(children: [
            //       Constants.verticalspace,
            //       Expanded(
            //         child: ListView(
            //           shrinkWrap: true,
            //           physics: BouncingScrollPhysics(),
            //           children: [
            //             //Constants.verticalspace,
            //             Center(child: Text("Time")),
            //             Divider(),
            //             Center(child: Text("11:00 - 12:00")),
            //             Divider(),
            //             Center(child: Text("11:00 - 12:00")),
            //             Divider(),
            //             Center(child: Text("11:00 - 12:00")),
            //             Divider(),
            //             Center(child: Text("11:00 - 12:00")),
            //             Divider(),
            //             Center(child: Text("11:00 - 12:00")),
            //             Divider(),
            //             Center(child: Text("11:00 - 12:00")),
            //             Divider(),
            //             Center(child: Text("11:00 - 12:00")),
            //             Divider(),
            //           ],
            //         ),
            //       ),
            //       VerticalDivider(),
            //       Expanded(
            //         child: ListView.builder(
            //           physics: BouncingScrollPhysics(),
            //           scrollDirection: Axis.horizontal,
            //           shrinkWrap: true,
            //           itemCount: days.length,
            //           itemBuilder: (context, index) {
            //             return ListView(
            //               scrollDirection: Axis.vertical,
            //               physics: NeverScrollableScrollPhysics(),
            //               shrinkWrap: true,
            //               children: [
            //                 Text(days[index]),
            //                 Divider(),
            //                 Text("11:00Am"),
            //                 Divider(),
            //                 Text("11:00Am"),
            //                 Divider(),
            //                 Text("11:00Am"),
            //                 Divider(),
            //                 Text("11:00Am"),
            //                 Divider(),
            //                 Text("11:00Am"),
            //                 Divider(),
            //                 Text("11:00Am"),
            //                 Divider(),
            //                 Text("11:00Am"),
            //                 Divider(),
            //               ],
            //             );
            //           },
            //         ),
            //       ),
            //       Constants.verticalspace,
            //     ]),
            //   ),
            // )
          ],
        ),
      ),
    ));
  }
}
