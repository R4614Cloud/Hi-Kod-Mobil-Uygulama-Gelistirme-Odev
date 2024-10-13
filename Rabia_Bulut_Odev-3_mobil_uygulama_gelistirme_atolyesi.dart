import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: FloatingActionButton(onPressed: (){
            print("FloatingActionButton'a Basıldı!");
          }, backgroundColor: Colors.pink, child: Icon(Icons.add),),
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            title: Text('Hi-Kod'),
            leading: Icon(Icons.menu),
            centerTitle: true,
            actions: [Icon(Icons.accessibility), Icon(Icons.add)],
            forceMaterialTransparency: false,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container( color: Colors.pinkAccent, height: 100, width: 50),
                  Container( color: Colors.green, height: 100, width: 50),
                  Container( color: Colors.deepPurple, height: 100, width: 50),
                  Container( color: Colors.amber, height: 100, width: 50),
                ],),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container( color: Colors.black, height: 100, width: 50),
                  Container( color: Colors.white, height: 100, width: 50),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container( color: Colors.red, height: 100, width: 50),
                ],),
            ],
          ),
        ));
  }
}
