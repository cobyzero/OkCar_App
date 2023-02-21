import 'package:flutter/material.dart';
import 'package:okcar_app/Common/colors.dart';

class AppBarDetails extends StatelessWidget {
  const AppBarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /**
         * Boton Retroceder
         */
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_backspace,
            color: MyColors.graySuave(),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: MyColors.graySuave(),
            ))
      ],
    );
  }
}
