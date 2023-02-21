import 'package:flutter/material.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [datosCar(), imagenCar()],
    );
  }

  Stack imagenCar() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          "assets/model_x.webp",
          height: 150,
        ),
        Image.asset(
          "assets/aro.webp",
          height: 40,
        )
      ],
    );
  }

  Row datosCar() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            logoCar(),
            nombreCar(),
          ],
        ),
        Row(
          children: const [
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 25,
            ),
            Text(
              "4.8",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
            )
          ],
        )
      ],
    );
  }

  Column nombreCar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Tesla Model S",
          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Text(
          "2021",
          style: TextStyle(color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Container logoCar() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 20),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
      width: 60,
      height: 60,
      child: Image.asset("assets/Audi_logo.png"),
    );
  }
}
