import 'package:flutter/material.dart';

class ExplicitPage extends StatefulWidget {
  const ExplicitPage({Key? key}) : super(key: key);

  @override
  State<ExplicitPage> createState() => _ExplicitPageState();
}

class _ExplicitPageState extends State<ExplicitPage>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4000),
      lowerBound: 0,
      upperBound: 3, // Ketla Rounds Fervvva ...
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Controller/Explicit Animation"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            RotationTransition(
              turns: animationController,
              child: Image.asset("assets/image/Mars2.jpeg", width: 180),
            ),
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
