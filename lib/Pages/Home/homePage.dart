import 'package:flutter/material.dart';
import 'package:okcar_app/Common/colors.dart';
import 'package:okcar_app/Common/widgets.dart';
import 'package:okcar_app/Pages/Home/Widgets/appBar.dart';
import 'package:okcar_app/Pages/Home/Widgets/brands.dart';
import 'package:okcar_app/Pages/Home/Widgets/cars.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background(),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarHome(),
              Common.space(20),
              const BrandsHome(),
              Common.space(20),
              Common.textCategoryBase("Available Cars"),
              Common.space(20),
              Expanded(child: CarsHome())
            ],
          ),
        ),
      ),
    );
  }
}
