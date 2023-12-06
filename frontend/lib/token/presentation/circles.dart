import 'package:flutter/material.dart';

class Circles extends StatelessWidget {
  const Circles({super.key});

  @override
  Widget build(BuildContext context) {
    final Color circlesColor = Theme.of(context).colorScheme.outline;
    return Stack(
      children: [
        SizedBox(
          width: 702,
          height: 702,
          child: Stack(
            children: [
              Positioned(
                left: 203,
                top: 201,
                child: Container(
                  width: 296,
                  height: 296,
                  decoration: ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(width: 2, color: circlesColor),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 189,
                top: 187,
                child: Container(
                  width: 324,
                  height: 324,
                  decoration: ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(width: 2, color: circlesColor),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 162,
                top: 161,
                child: Container(
                  width: 377,
                  height: 377,
                  decoration: ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(width: 2, color: circlesColor),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 114,
                top: 115,
                child: Container(
                  width: 473,
                  height: 473,
                  decoration: ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(width: 2, color: circlesColor),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 61,
                child: Container(
                  width: 581,
                  height: 581,
                  decoration: ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(width: 2, color: circlesColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
