import 'package:firebase3withflutter220710/widgets/vertical_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Image.asset(
                      'assets/images/newspaper.png',
                      height: 60,
                      width: 60,
                    ),
                  ),
                  VerticalSpacing(20),
                  const Flexible(
                    child: Text('News app'),
                  ),
                ],
              ),
            ),
            VerticalSpacing(20),
            ListTiles(
              label: "Home",
              fct: () {},
              icon: IconlyBold.home,
            ),
            ListTiles(
              label: "Bookmark",
              fct: () {},
              icon: IconlyBold.bookmark,
            )
          ],
        ),
      ),
    );
  }
}

class ListTiles extends StatelessWidget {
  const ListTiles({
    Key? key,
    required this.label,
    required this.fct,
    required this.icon,
  }) : super(key: key);

  final String label;
  final Function fct;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        label,
        style: TextStyle(fontSize: 20),
      ),
      onTap: () {
        fct();
      },
    );
  }
}
