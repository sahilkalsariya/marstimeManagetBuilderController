import 'package:flutter/material.dart';

class impliciteController extends StatefulWidget {
  const impliciteController({Key? key}) : super(key: key);

  @override
  State<impliciteController> createState() => _impliciteControllerState();
}

class _impliciteControllerState extends State<impliciteController>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  late Animation sizeAnimation;
  late Animation colorAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4000),
    );

    sizeAnimation = TweenSequence([
      TweenSequenceItem(tween: Tween<double>(begin: 25,end: 300),weight: 0.5), // weight Expanded flex jevu kam kare // time mate
      TweenSequenceItem(tween: Tween<double>(begin: 300,end: 50),weight: 2), // weight Expanded flex jevu kam kare // time
      TweenSequenceItem(tween: Tween<double>(begin: 50,end: 200),weight: 2), // weight Expanded flex jevu kam kare
      TweenSequenceItem(tween: Tween<double>(begin: 200,end: 100),weight: 0.5), // weight Expanded flex jevu kam kare
    ]).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.red, end: Colors.amber).animate(
      // animationController << khali aa lakhvathi banne sathe thai time managment ni jarur no pde
      CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1), // 0 to 1 // time Controlller aa time par aa thavu pade
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explicit Builders Animation"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            AnimatedBuilder(
                animation: animationController,
                builder: (context, widget) {
                  return Container(
                    height: sizeAnimation.value,
                    width: sizeAnimation.value,
                    color: colorAnimation.value,
                  );
                }),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                animationController.forward();
              },
              child: Text("Animate"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                animationController.reverse();
              },
              child: Text("Reverse"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                animationController.repeat();
              },
              child: Text("Repeat"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                animationController.stop();
              },
              child: Text("Stop"),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
