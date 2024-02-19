import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/widgets/header_widget.dart';
import 'package:flutter_application_1/src/widgets/lista_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 0.075),
      body: Column(
        children: const <Widget> [
          Headerwidget(),
          listaPersonajes()
        ],
        ),
    );
  }
}
