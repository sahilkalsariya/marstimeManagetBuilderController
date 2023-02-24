import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('heropage1');
            }, child: Text("Hero Animation"),),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('implicitepage');
            }, child: Text("Implicite Page"),),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('explicitpage');
            }, child: Text("Explicit Page"),),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('impliciteController');
            }, child: Text("Implicite Builder Page"),),
          ],
        ),
      ),
    );
  }
}
