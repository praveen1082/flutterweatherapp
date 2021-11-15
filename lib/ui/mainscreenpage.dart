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
          ],
        ),
      ),
    ));
  }
}
