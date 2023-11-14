import 'package:flutter/material.dart';
import 'package:frontend/homeitems/bottomsheet/presentation/bottomsheetbutton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(bottomSheet: BottomSheetButton());
  }
}
