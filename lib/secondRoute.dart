import 'package:flutter/material.dart';
class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin:const  EdgeInsets.symmetric(vertical: 10),
        height: 300,
        width: 300,
        child:const FlutterLogo(),
      ),

    );
  }
}
