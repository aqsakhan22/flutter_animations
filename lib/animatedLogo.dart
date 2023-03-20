import 'package:flutter/material.dart';
import 'dart:math' as math;
class AnimatedLogo extends StatefulWidget {
  const AnimatedLogo({Key? key}) : super(key: key);

  @override
  State<AnimatedLogo> createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo> with  SingleTickerProviderStateMixin{
  Animation<double>? animation;
  AnimationController? controller;
  Animation? colorAnimation;
  Animation? sizeAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=AnimationController(duration: Duration(seconds: 2), vsync: this);
    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.yellow).animate(CurvedAnimation(parent: controller!, curve: Curves.bounceInOut));
    sizeAnimation = Tween<double>(begin: 200.0, end: 300.0).animate(controller!);
    animation=Tween<double>(begin: 0,end: 300).animate(controller!)
      ..addListener(() {

      setState(() {
      });

    });
    // animation=Tween<double>(begin: 0,end: 300).animate(controller!)
    //   ..addStatusListener((status) {
    //   // if (status == AnimationStatus.completed) {
    //   //   controller!.reverse();
    //   // }
    //   // else if (status == AnimationStatus.dismissed) {
    //   //   controller!.forward();
    //   // }
    //   setState(() {
    //   });
    //
    // });
    controller!.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Demo"),
      ),

      body: Center(
        child:animated1()

        // Container(
        //   color: colorAnimation!.value,
        //   margin:  EdgeInsets.symmetric(vertical: 10),
        //   height: sizeAnimation!.value,
        //   width: sizeAnimation!.value,
        //   // child: FlutterLogo(),
        // ),
      ),
    );
  }
}

class animated1 extends StatelessWidget {
  const animated1({Key? key}) : super(key: key);
//this is implicirt
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 100,
        width: 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey,Colors.red]
          )
        ),
        duration: Duration(seconds: 1),
        transform: Matrix4.identity()
      ..translate(300/2,300/2)
        ..multiply(Matrix4.rotationZ(math.pi / 4))
        ..translate(-300 / 2,-300/2)
    );
  }
}




