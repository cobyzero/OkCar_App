import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [textosAppBar(), botonBuscar()],
    );
  }

  IconButton botonBuscar() {
    return IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search,
          size: 40,
          color: Colors.grey,
        ));
  }

  Row textosAppBar() {
    return Row(
      children: const [
        Text(
          "Choose ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
        Text(
          "a Car",
          style: TextStyle(fontSize: 40),
        )
      ],
    );
  }
}
