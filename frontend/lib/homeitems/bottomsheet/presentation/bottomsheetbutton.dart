import 'package:flutter/material.dart';
import 'bottomsheetmenu.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        if (details.primaryDelta! < -10) {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const BottomSheetMenu();
            },
          );
        }
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return const BottomSheetMenu();
                },
              );
            },
            child: Container(
              height: 20.0,
              width: 500.0,
              child: const Divider(
                color: Colors.black,
                thickness: 2.0,
                height: 1.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
