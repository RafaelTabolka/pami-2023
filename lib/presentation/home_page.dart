import 'package:atividade_aula/data/contato_repository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final contatos = LoadContatos();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Agenda"),
        ),
        body: ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            itemCount: contatos.length,
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/agenda",
                      arguments: contatos[index],
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text(contatos[index].nome)],
                    ),
                  ),
                )));
  }
}
