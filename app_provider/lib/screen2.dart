import 'package:app_provider/main.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text(
            'EDIÇÃO',
            style: TextStyle(color: AppColors.backgroundColor),
          ),
        backgroundColor: AppColors.widgetsColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_task,
                  size: 50,
                ),
                color: AppColors.verde,
                ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  size: 50,
                ),
                color: AppColors.azul,
                ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  size: 50,
                ),
                color: AppColors.vermelho,
                ),
        ],
        ),
      ),
    );
  }
}
