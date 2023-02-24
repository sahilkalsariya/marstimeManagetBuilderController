import 'package:flutter/material.dart';

class HeroPage2 extends StatefulWidget {
  const HeroPage2({Key? key}) : super(key: key);

  @override
  State<HeroPage2> createState() => _HeroPage2State();
}

class _HeroPage2State extends State<HeroPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hero Page 2"),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Hero(
                  tag: 'home',
                  child: Icon(Icons.home, size: 100),
                ),
              ),
            ],
          ),
        ));
  }
}
