import 'package:atividade_aula/presentation/dados_agenda_page.dart';
import 'package:atividade_aula/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dados Pessoais",
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      initialRoute: "/",
      routes: {
        "/":(context) => const HomePage(),
        "/agenda":(context) => const DadosAgendaPage()
      },
    );
  }
}