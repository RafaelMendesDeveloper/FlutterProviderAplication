import 'package:flutter/material.dart';
import 'colors.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text('CADASTRO', style: TextStyle(color: AppColors.backgroundColor),),
        backgroundColor: AppColors.widgetsColor,
      ),
      body: Center(
        child: Text(
          'Você está na tela de listagem!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
