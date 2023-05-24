import 'package:atividade_aula/domain/contato.dart';
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
        child: Row(          
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              
                child: Image.network(contato.foto),
              ),
              Text(contato.nome)
          ],
        ),),
    );
  }
}