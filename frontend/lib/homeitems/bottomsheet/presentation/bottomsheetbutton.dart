import 'package:flutter/material.dart';
import 'bottomsheetmenu.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return const BottomSheetMenu();
          },
        );
      },
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
      child: const Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            height: 40.0,
            width: 300.0,
            child: Divider(
              thickness: 4.0,
              height: 3.0,
            ),
          ),
        ],
      ),
    );
  }
}
