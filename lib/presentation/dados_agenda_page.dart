import 'package:atividade_aula/domain/contato.dart';
import 'package:atividade_aula/presentation/dado_contato.dart';
import 'package:flutter/material.dart';

class DadosAgendaPage extends StatelessWidget {
  const DadosAgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    var contato = ModalRoute.of(context)!.settings.arguments as Contato;

    return Scaffold(
      appBar: AppBar(
        title: Text(contato.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(contato.foto),
                  Text(contato.nome),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DadoContato(content: contato.email),
                    DadoContato(content: contato.dataNascimento),
                    DadoContato(content: contato.telefone),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
