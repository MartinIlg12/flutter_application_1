import 'package:flutter/material.dart';
import '../pages/detail_page.dart';

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
              bloquesPortada("chelsea1.jpg", "Home", " 2023/24"),
              SizedBox(
                width: widthPantalla * 0.03,
              ),
              bloquesPortada("chelsea2.jpg", "Away", " 2023/24"),
              SizedBox(
                width: widthPantalla * 0.03,
              ),
              bloquesPortada("chelsea3.jpg", "Third", " 2023/24"),
            ],
          ),
          const Divider(
            thickness: 1,
            color: Color.fromARGB(255, 62, 62, 62),
          ),
          const SizedBox(
            height: 10,
          ),
          bloquePersonajes("Mr. Poch                                ☰", 0xff87CEEB, "Poch"),
          bloquePersonajes("Gusto                                   ☰", 0xff00FFFF, "malo"),
          bloquePersonajes("Disasi                                  ☰", 0xffffffff, "disai"),
          bloquePersonajes("Thiago                                  ☰", 0xff87CEEB, "thiago"),
          bloquePersonajes("Chilly                                  ☰", 0xff00FFFF, "ben"),
          bloquePersonajes("Moi                                     ☰", 0xffffffff, "moi"),
          bloquePersonajes("Enzo                                    ☰", 0xff87CEEB, "enzo"),
          bloquePersonajes("Connor                                  ☰", 0xff00FFFF, "connor"),
          bloquePersonajes("Cold Palmer                             ☰", 0xffffffff, "cold"),
          bloquePersonajes("Sterling                                ☰", 0xff87CEEB, "ster"),
          bloquePersonajes("Jackson                                 ☰", 0xff00FFFF, "nicolas"),
          bloquePersonajes("Nkunku                                  ☰", 0xffffffff, "nkunku"),
        ],
      ),
    );
  }

  Widget bloquePersonajes(String nombre, int color, String imagen) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => DetailPage()));
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(66, 239, 239, 241)),
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 8,
                          offset: const Offset(0, 5),
                          spreadRadius: 0.0,
                          blurStyle: BlurStyle.normal,
                          color: Color(color))
                    ], borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.all(8),
                    child: Image.asset("assets/$imagen.jpg"),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    nombre,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ));
  }

  Column bloquesPortada(String image, String titulo, String subTitulo) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$image",
            width: widthPantalla * 0.31,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        RichText(
            text: TextSpan(
                text: titulo,
                style: const TextStyle(color: Colors.white70, fontSize: 14),
                children: [
              TextSpan(
                  text: subTitulo,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 49, 77, 204),
                      fontWeight: FontWeight.w300,
                      fontSize: 12))
            ]))
      ],
    );
  }
}
