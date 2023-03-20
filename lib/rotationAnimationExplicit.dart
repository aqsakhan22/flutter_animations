import 'package:flutter/material.dart';
class rotationAnimationExplicit extends StatefulWidget {
  const rotationAnimationExplicit({Key? key}) : super(key: key);

  @override
  State<rotationAnimationExplicit> createState() => _rotationAnimationExplicitState();
}

class _rotationAnimationExplicitState extends State<rotationAnimationExplicit> with SingleTickerProviderStateMixin {
   AnimationController? controller;
     Animation<AlignmentGeometry>? alignAnimation;
     Animation<double>? rotationAnimation;
     @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..repeat(reverse: true);

    alignAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(
      CurvedAnimation(
        parent: controller!,
        curve: Curves.easeInOutCubic,
      ),
    );

    rotationAnimation = Tween<double>(begin: 0, end: 2).animate(
      CurvedAnimation(
        parent: controller!,
        curve: Curves.easeInOutCubic,
      ),
    );
  }

   @override
   void dispose() {
     controller!.dispose();
     super.dispose();
   }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: AlignTransition(
        alignment: alignAnimation!,
        child: RotationTransition(
          turns: rotationAnimation!,
        )
      ),
    );
  }
}
