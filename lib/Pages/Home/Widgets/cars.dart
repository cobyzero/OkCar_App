import 'package:flutter/material.dart';
import 'package:okcar_app/Common/colors.dart';
import 'package:okcar_app/Common/widgets.dart';

class CarsHome extends StatefulWidget {
  const CarsHome({super.key});

  @override
  State<CarsHome> createState() => _CarsHomeState();
}

class _CarsHomeState extends State<CarsHome> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        itemGeneral(),
        itemGeneral(),
        itemGeneral(),
        itemGeneral(),
      ],
    );
  }

  Column itemGeneral() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.only(left: 20),
          decoration:
              BoxDecoration(color: MyColors.graySuave(), borderRadius: BorderRadius.circular(20)),
          width: double.infinity,
          child: Column(children: [itemPartUp(), itemPartBot()]),
        )
      ],
    );
  }

  Row itemPartBot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [textosPrecio(), botonDetails()],
    );
  }

  botonDetails() {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/Details");
      },
      child: Container(
        padding: const EdgeInsets.only(top: 15, bottom: 15, left: 50, right: 50),
        decoration: BoxDecoration(
            color: MyColors.blueGeneral(),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
        child: const Text(
          "Details",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Row textosPrecio() {
    return Row(
      children: const [
        Text(
          "\$180",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          "/day",
          style: TextStyle(color: Colors.grey, fontSize: 20),
        )
      ],
    );
  }

  Row itemPartUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/model_x.webp",
          height: 120,
          width: 180,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                "Tesla Model X",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "2018",
                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }
}
