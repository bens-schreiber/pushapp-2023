import 'package:flutter/material.dart';
import 'package:frontend/homeitems/slidingmenu/slideingmenu.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomSheet: MenuButton())