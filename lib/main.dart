import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animations/TransitionsHomePage.dart';
import 'package:flutter_animations/animatedLogo.dart';
import 'package:flutter_animations/logoApp.dart';
import 'package:flutter_animations/rotationAnimationExplicit.dart';
import 'package:flutter_animations/secondRoute.dart';
import 'package:flutter_animations/utility/topvariable.dart';
//https://www.tutorialspoint.com/flutter/flutter_animation.htm
//https://www.google.com/search?q=animations+in+flutter&rlz=1C5CHFA_enPK918PK918&source=lnms&tbm=vid&sa=X&ved=2ahUKEwiin82B2un9AhUHRqQEHd9WDdQQ_AUoAXoECAEQAw&biw=1440&bih=687&dpr=2#fpstate=ive&vld=cid:44ca32ab,vid:OtrWXLfGtqE

//https://www.google.com/search?q=animations+in+flutter&rlz=1C5CHFA_enPK918PK918&source=lnms&tbm=vid&sa=X&ved=2ahUKEwiin82B2un9AhUHRqQEHd9WDdQQ_AUoAXoECAEQAw&biw=1440&bih=687&dpr=2#fpstate=ive&vld=cid:9d1e3d75,vid:62x72iRPZtc

//https://api.flutter.dev/flutter/widgets/AnimatedAlign-class.html

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.from(
         colorScheme: ColorScheme.light(
           primary: Colors.pink

         ),



      ).copyWith(

        pageTransitionsTheme: PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        )
      ),
      initialRoute: '/',
      navigatorKey: TopVariables.appNavigationKey,
      routes: {
        '/':(context) =>  LogoApp(),
         '/animatedLogo':(context) =>  AnimatedLogo(),
        '/explicitRotation':(context) =>  rotationAnimationExplicit(),
        '/TransitionsHomePage':(context) =>  TransitionsHomePage(),
      },

      // home: LogoApp(),
    );
  }
}

