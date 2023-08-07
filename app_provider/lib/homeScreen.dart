import 'package:flutter/material.dart';
import 'colors.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            'PÁGINA INICIAL',
            style: TextStyle(color: AppColors.backgroundColor),
          ),
        ),
        backgroundColor: AppColors.widgetsColor,
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
                    backgroundColor: AppColors.widgetsColor,
                    elevation: 12.0,
                    textStyle: const TextStyle(color: Colors.white)),
                child: const Text('LISTAGEM DE CADASTRO'),
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
                    backgroundColor: AppColors.widgetsColor,
                    elevation: 12.0,
                    textStyle: const TextStyle(color: Colors.white)),
                child: const Text('EDITAR'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
