import 'package:flutter/material.dart';
import 'bottom_sheet_menu.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({
    super.key,
  });

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
        if (details.primaryDelta! < -2) {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const BottomSheetMenu();
            },
          );
        }
      },
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          const SizedBox(
            height: 50.0,
            width: 400.0,
          ),
          Container(
            width: 307,
            height: 6,
            decoration: ShapeDecoration(
              color: const Color(0xFF3C3B3B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          )
        ],
      ),
    );
  }
}
