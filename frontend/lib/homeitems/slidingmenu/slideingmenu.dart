import 'package:flutter/material.dart';


class MenuButton extends StatelessWidget {
  const MenuButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onVerticalDragUpdate: (details) {
          if (details.primaryDelta! < -10) {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Menu();
              },
            );
          }
        },
        child: Center(
          child: Dismissible(
            key: const Key('dismiss'),
            onDismissed: (direction) {
              if (direction == DismissDirection.down) {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Menu();
                  },
                );
              }
            },
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Menu();
                  },
                );
              },
              child: const Text("^^^"),
            ),
          ),
        ),
      ),
    );
  }
}


class Menu extends StatelessWidget {
  const Menu({Key? key});

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
