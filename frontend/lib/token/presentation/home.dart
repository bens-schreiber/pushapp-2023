import 'package:flutter/material.dart';
import 'package:frontend/token/presentation/bottom_sheet/bottom_sheet_button.dart';
import 'package:frontend/token/presentation/circles.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
            children: [Positioned(left: -136, top: 25, child: Circles())]),
        bottomSheet: BottomSheetButton());
  }
}
