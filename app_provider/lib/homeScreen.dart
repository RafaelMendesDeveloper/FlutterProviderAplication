import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Color widgetsColor = const Color.fromARGB(240, 238, 175, 45);
  final Color backgroundColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            'PÁGINA INICIAL',
            style: TextStyle(color: backgroundColor),
          ),
        ),
        backgroundColor: widgetsColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/screen1');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: widgetsColor,
                    elevation: 12.0,
                    textStyle: const TextStyle(color: Colors.white)),
                child: const Text('TELA 1'),
              ),
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/screen2');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: widgetsColor,
                    elevation: 12.0,
                    textStyle: const TextStyle(color: Colors.white)),
                child: const Text('TELA 2'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
