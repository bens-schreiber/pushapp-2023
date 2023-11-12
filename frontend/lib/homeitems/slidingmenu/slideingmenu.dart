import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      builder: (context, ScrollController scrollController) =>
          SingleChildScrollView(
        controller: scrollController,
        child: Menu(),
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
