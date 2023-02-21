import 'package:flutter/material.dart';
import 'package:okcar_app/Common/widgets.dart';

class BrandsHome extends StatelessWidget {
  const BrandsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Common.textCategoryBase("Brands"),
          Common.space(10),
          listaDeItems(),
        ],
      ),
    );
  }

  Expanded listaDeItems() {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          itemBrands(
              const Color(0xffE3E2E2),
              const Center(
                child: Text(
                  "All",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )),
          itemBrands(
            const Color(0xff0F5EF4),
            Image.asset("assets/ford_logo.webp"),
          ),
          itemBrands(
              const Color.fromARGB(213, 236, 236, 234),
              Image.asset(
                "assets/Audi_logo.png",
              )),
          itemBrands(
              const Color.fromARGB(213, 236, 236, 234),
              Image.asset(
                "assets/honda_logo.png",
              )),
          itemBrands(
              const Color.fromARGB(213, 236, 236, 234),
              Image.asset(
                "assets/Toyota-Logo.png",
              )),
          itemBrands(
              const Color.fromARGB(213, 236, 236, 234),
              Image.asset(
                "assets/volkswagen_Logo.png",
              )),
        ],
      ),
    );
  }

  Container itemBrands(Color color, Widget widget) {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(right: 20),
        height: 100,
        width: 100,
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
        child: widget);
  }
}
