import 'package:flutter/material.dart';
import 'package:frontend/homeitems/slidingmenu/slideingmenu.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Menu();
              },
            );
          }, child: const Text("^^^"),
        ),
      ),
    );
  }
}