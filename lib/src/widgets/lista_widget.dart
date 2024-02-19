import 'package:flutter/material.dart';

class listaPersonajes extends StatefulWidget {
  const listaPersonajes({super.key});

  @override
  State<listaPersonajes> createState() => _listaPersonajesState();
}

class _listaPersonajesState extends State<listaPersonajes> {
  double widthPantalla = 0;
  final tituloStyleText = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16);
  @override
  Widget build(BuildContext context) {
    widthPantalla = MediaQuery.of(context).size.width - 50;
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Text(
            "Camisas 2023/24",
            style: tituloStyleText,
          ),
          Row(
            children: [
              bloquesPortada("chelsea1.jpg", "titulo", "subtitulo"),
              SizedBox(
                width: widthPantalla*0.03,
              ),
              bloquesPortada("chelsea2.jpg", "titulo", "subtitulo"),
              SizedBox(
                width: widthPantalla*0.03,
              ),
              bloquesPortada("chelsea3.jpg", "titulo", "subtitulo"),
              SizedBox(
                width: widthPantalla*0.03,
              ),
            ],
          )
        ],
      ),
    );
  }

  Column bloquesPortada(String image, String titulo, String subTitulo) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset("assets/$image",
          width: widthPantalla*0.29,
          height: 110,
          fit: BoxFit.cover,),
        ),
        const SizedBox(

        )
      ],
    );
  }
}
