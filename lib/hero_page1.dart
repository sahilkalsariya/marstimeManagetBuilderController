import 'package:flutter/material.dart';

class HeroPage1 extends StatefulWidget {
  const HeroPage1({Key? key}) : super(key: key);

  @override
  State<HeroPage1> createState() => _HeroPage1State();
}

class _HeroPage1State extends State<HeroPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hero Page 1"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('heropage2');
                },
                child: Hero(
                  tag: 'home',
                  child: Icon(Icons.home, size: 200),
                  placeholderBuilder: (context, _, __) {
                    return CircularProgressIndicator();
                  },
                  flightShuttleBuilder: (context, _, direction, __, ___) {
                    return (direction == HeroFlightDirection.push)
                        ? Icon(
                            Icons.arrow_forward,
                            size: 200,
                          )
                        : Icon(
                            Icons.arrow_back,
                            size: 200,
                          );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
