import 'package:flutter/material.dart';
import '../widgets/blur_container.dart';
import '../widgets/infotitle_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.color, required this.image, required this.nombre});
  final int color;
  final String image;
  final String nombre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(color), Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: SizedBox(
                      height: 500.0, child: Hero(tag: color, child: Image.asset(image)),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: BlurContainer(child: Container(
                      width: 160,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.1)
                      ),
                      child: Text(nombre, style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white
                      ),),
                    )),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("$nombre ",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("Chelsea Fc", style: TextStyle(color: Colors.white70),),),
              const SizedBox(height: 20,),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  InfoTitle(title: "2023/24", subTitle: "Temporada"),
                  InfoTitle(title: "Starting XI", subTitle: "Premier League"),
                ],
              ),
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                height: 40,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(color)
                ),
                child:  const Text("Volver", style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              )
            ],
          ),
        ));
  }
}
