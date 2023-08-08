import 'package:flutter/material.dart';
import 'colors.dart';
import 'main.dart';
import 'package:provider/provider.dart';

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
        child: Consumer<EstadoListaDePessoas>(
          builder: (context, estadoLista, _) {
            final pessoas = estadoLista.pessoas;
            return ListView.builder(
              itemCount: pessoas.length,
              itemBuilder: (context, index) {
                final pessoa = pessoas[index];
                return ListTile(
                  title: Text(pessoa.nome),
                  subtitle: Column(
                    children: [
                      Text(pessoa.email),
                      Text(pessoa.github),
                      Text(pessoa.telefone),
                      Text(pessoa.tipoSanguineo.displayValue),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
