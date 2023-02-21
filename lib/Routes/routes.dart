import 'package:flutter/material.dart';
import 'package:okcar_app/Pages/Details/detailsPage.dart';
import 'package:okcar_app/Pages/Home/homePage.dart';

Map<String, WidgetBuilder> routesApp() {
  return {"/Home": (context) => HomePage(), "/Details": (context) => DetailsPage()};
}
