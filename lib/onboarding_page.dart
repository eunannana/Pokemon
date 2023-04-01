import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:pokemon/src/constants/colors.dart';
import 'package:pokemon/src/constants/image_string.dart';
import 'package:pokemon/src/constants/sizes.dart';
import 'package:pokemon/src/constants/text_string.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: tWhiteColor,
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(tOnBoardingTitle, style: TextStyle(color: Color.fromARGB(255, 209, 209, 6),)),
                Text(tOnBoardingSubTitle,
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center),
            Image(image: const AssetImage(tBoardingImage), height: height * 0.2),
            Column(
              // children: [
                
              // ],
            ),
            Row(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                  icon: Icon(Icons.navigate_next_outlined),
                  ),
                ),
                const SizedBox(width: 1.0),
              ],
            )
          ],
        ),
      ),
    );
  }
}