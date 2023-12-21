import 'package:flutter/material.dart';
import 'package:frontend/token/presentation/bottom_sheet/bottom_sheet_button.dart';
import 'package:frontend/token/presentation/circles.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final iphonewidth = 430.0;
    final iphoneheight = 932.0;
    final widthRatio = screenWidth / iphonewidth;
    final heightRatio = screenHeight / iphoneheight;
    final adjustedLeft = -145 * widthRatio;
    final adjustedTop = 25 * heightRatio;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: adjustedLeft,
            top: adjustedTop,
            child: Container(
              width: 702,
              height: 702,
              child: Circles(),
            ),
          ),
        ],
      ),
      bottomSheet: const BottomSheetButton(),
    );
  }
}
