import 'package:flutter/material.dart';
import 'package:frontend/bottomsheet/bottomsheetbutton.dart';
import 'package:frontend/token-area/circles.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Circles(), bottomSheet: BottomSheetButton());
  }
}
