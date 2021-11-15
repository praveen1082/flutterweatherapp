import 'package:flutter/material.dart';
import 'package:weatherapp/constants.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({Key? key}) : super(key: key);

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
                              fontSize: 34.0,
                              fontWeight: Constants.mainpagetitlefontweight),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Cloudy",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: Constants.mainpagetitlefontweight),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Kathmandu, Nepal",
                          style: TextStyle(
                              fontSize: 20.0,
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
            Row(children: [
              Constants.verticalspace,
              Expanded(
                  child: Container(
                height: 190,
                color: Colors.red,
              )),
              Constants.verticalspace,
            ])
          ],
        ),
      ),
    ));
  }
}
