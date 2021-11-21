import 'package:flutter/material.dart';
import 'package:weatherapp/constants.dart';
import 'package:weatherapp/ui/chartwidget.dart';
import 'package:weatherapp/ui/weatherroutinewidget.dart';
import 'package:weatherapp/ui/weatherwidget.dart';

class MainPageScreen extends StatelessWidget {
  MainPageScreen({Key? key}) : super(key: key);

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
            WeatherRoutine(),
            Constants.horizontalspace,
            Divider(),
            Constants.horizontalspace,
            Row(
              children: [
                Constants.verticalspace,
                Text(
                  "Chances of rain",
                  style: Constants.subheadingtextstyle,
                )
              ],
            ),
            Constants.horizontalspace,
            Padding(
              padding: Constants.symmetricpaddingoutsidecontainerhorizontal,
              child: Container(
                height: 200,
                // color: Colors.blue,
                child: ChartWidget(),
              ),
            )
            // Container(color: Colors.green, height: 100, child: ChartWidget()),
          ],
        ),
      ),
    ));
  }
}
