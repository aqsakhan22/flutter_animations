import 'package:flutter/material.dart';
class LogoApp extends StatefulWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  State<LogoApp> createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
   Animation<double>? animation;
    AnimationController? controller;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();


   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        margin: EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/animatedLogo');
            }, child: Text("animatedLogo")),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/explicitRotation');
            }, child: Text("ExplicitRotation")),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/TransitionsHomePage');
            }, child: Text("TransitionsHomePage")),

          ],
        ),
      ),
    );
  }
}
