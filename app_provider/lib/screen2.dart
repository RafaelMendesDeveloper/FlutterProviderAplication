import 'package:flutter/material.dart';
import 'colors.dart';
import 'main.dart';
import 'package:provider/provider.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _githubController = TextEditingController();
  TipoSanguineo _tipoSanguineoSelecionado = TipoSanguineo.aPositivo;

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
            Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: _nomeController,
                      decoration: InputDecoration(
                        labelText: 'Nome',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: _telefoneController,
                      decoration: InputDecoration(
                        labelText: 'Telefone',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: _githubController,
                      decoration: InputDecoration(
                        labelText: 'GitHub',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: DropdownButtonFormField<TipoSanguineo>(
                      value: _tipoSanguineoSelecionado,
                      onChanged: (newValue) {
                        setState(() {
                          _tipoSanguineoSelecionado = newValue!;
                        });
                      },
                      items: TipoSanguineo.values.map((tipo) {
                        return DropdownMenuItem<TipoSanguineo>(
                          value: tipo,
                          child: Text(tipo.displayValue),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        labelText: 'Tipo Sanguíneo',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final pessoa = Pessoa(
                        nome: _nomeController.text,
                        email: _emailController.text,
                        telefone: _telefoneController.text,
                        github: _githubController.text,
                        tipoSanguineo: _tipoSanguineoSelecionado,
                        tipoSanguineoAtualizado: _tipoSanguineoSelecionado.toString(),
                      );

                      if (pessoa.nome.isNotEmpty) {
                        EstadoListaDePessoas estadoLista = context.read<EstadoListaDePessoas>();
                        estadoLista.incluir(pessoa);
                      }

                      _nomeController.clear();
                      _emailController.clear();
                      _telefoneController.clear();
                      _githubController.clear();
                      setState(() {
                        _tipoSanguineoSelecionado = TipoSanguineo.aPositivo;
                      });
                    },
                    child: Text('Adicionar'),
                  ),
                ],
              ),
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
