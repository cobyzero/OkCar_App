import 'package:flutter/material.dart';
import 'package:okcar_app/Common/colors.dart';
import 'package:okcar_app/Common/widgets.dart';
import 'package:okcar_app/Pages/Details/Widgets/appBar.dart';
import 'package:okcar_app/Pages/Details/Widgets/car.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background(),
      body: Column(
        children: [topContainer(), botContainer()],
      ),
    );
  }

  botContainer() {
    return Expanded(
      child: Container(
          margin: const EdgeInsets.only(left: 20, top: 20),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Common.textCategoryBase("Specification"),
                listSpecification(),
                Common.space(20),
                textoLocation(),
                Common.space(10),
                textoUbicacion(),
                Common.space(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [textosPrecio(), botonDetails()],
                )
              ],
            ),
          )),
    );
  }

  botonDetails() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(top: 15, bottom: 15, left: 50, right: 50),
        decoration: BoxDecoration(
            color: MyColors.blueGeneral(),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
        child: const Text(
          "Book Now",
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

  Row textoUbicacion() {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: MyColors.blueGeneral(),
        ),
        Common.space(0, w: 5),
        Text("Mansfield Avenu, Los Angeles, CA")
      ],
    );
  }

  Row textoLocation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Common.textCategoryBase("Location"),
        Row(
          children: const [
            Icon(
              Icons.directions_walk,
              color: Colors.grey,
            ),
            Text(
              "344 m",
              style: TextStyle(color: Colors.grey),
            )
          ],
        )
      ],
    );
  }

  SizedBox listSpecification() {
    return SizedBox(
      width: double.infinity,
      height: 130,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        itemSpecification(Icons.speed, "322", "km/h"),
        itemSpecification(Icons.invert_colors, "Black", "Color"),
        itemSpecification(Icons.schedule, "2021", "Year"),
      ]),
    );
  }

  Container itemSpecification(IconData icon, String n1, String n2) {
    return Container(
      margin: const EdgeInsets.only(top: 10, right: 20),
      padding: const EdgeInsets.only(top: 5),
      width: 160,
      height: 120,
      decoration:
          BoxDecoration(color: MyColors.blackSuave(), borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 80,
          ),
          textoVelocidad(n1, n2)
        ],
      ),
    );
  }

  Row textoVelocidad(String n1, String n2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          n1,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
        ),
        Common.space(0, w: 5),
        Text(
          n2,
          style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Expanded topContainer() {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.only(top: 25, right: 10, left: 10),
      decoration: BoxDecoration(
          color: MyColors.blackSuave(),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
      child: Column(
        children: const [AppBarDetails(), CarDetails()],
      ),
    ));
  }
}
