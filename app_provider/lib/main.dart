import 'package:app_provider/screen1.dart';
import 'package:app_provider/screen2.dart';
import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'package:provider/provider.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => EstadoListaDePessoas(),
      child: MyApp(),
    ),
  );
}

enum TipoSanguineo {
  aPositivo,
  aNegativo,
  bPositivo,
  bNegativo,
  oPositivo,
  oNegativo,
  abPositivo,
  abNegativo,
}

extension TipoSanguineoExtension on TipoSanguineo {
  String get displayValue {
    switch (this) {
      case TipoSanguineo.aPositivo:
        return 'A+';
      case TipoSanguineo.aNegativo:
        return 'A-';
      case TipoSanguineo.bPositivo:
        return 'B+';
      case TipoSanguineo.bNegativo:
        return 'B-';
      case TipoSanguineo.oPositivo:
        return 'O+';
      case TipoSanguineo.oNegativo:
        return 'O-';
      case TipoSanguineo.abPositivo:
        return 'AB+';
      case TipoSanguineo.abNegativo:
        return 'AB-';
    }
  }
}

class Pessoa {
  const Pessoa({
    required this.nome,
    required this.email,
    required this.telefone,
    required this.github,
    required this.tipoSanguineo,
    required this.tipoSanguineoAtualizado,
  });

  final String nome;
  final String email;
  final String telefone;
  final String github;
  final TipoSanguineo tipoSanguineo;
  final String tipoSanguineoAtualizado;

  
  // todo: implementar equals e hashcode
}

class EstadoListaDePessoas with ChangeNotifier {
  final _listaDePessoas = <Pessoa>[];

  List<Pessoa> get pessoas => List.unmodifiable(_listaDePessoas);

  incluir(Pessoa pessoa) {
    _listaDePessoas.add(pessoa);
    notifyListeners();
  }

  void excluir(Pessoa pessoa) {
    _listaDePessoas.remove(pessoa);
    notifyListeners();
  }

  // todo: implementar metodos restantes
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
      },
    );
  }
}
