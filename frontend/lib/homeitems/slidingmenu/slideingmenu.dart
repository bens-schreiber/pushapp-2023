import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        if (details.primaryDelta! < -10) {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const Menu();
            },
          );
        }
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 40.0, 
            width: 40.0, 
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return const Menu();
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

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.amber,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Bottom Sheet'),
            ElevatedButton(
              child: const Text('Close'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
