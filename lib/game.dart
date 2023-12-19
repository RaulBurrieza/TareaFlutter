import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tarea1/choose.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int currentIndex = 0;
  List<String> images = [
    'imagen1.jpg',
    'imagen2.jpg',
    'imagen3.jpg',
  ];
  
  late Timer timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const duration = const Duration(seconds: 5); // Cambia la imagen cada 5 segundos
    timer = Timer.periodic(duration, (Timer timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % images.length;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Memorizar Imágenes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Recuerda memorizar estas imágenes',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/${images[currentIndex]}', 

              height: 200,
              width: 200,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseScreen()));
              },
              child: Text('Siguiente pantalla'),
            ),
          ],
        ),
      ),
    );
  }
}

