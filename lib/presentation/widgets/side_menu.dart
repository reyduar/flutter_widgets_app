import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/config/menu/menu_items.dart';
import 'package:go_router/go_router.dart';

class SideMenuState extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenuState({super.key, required this.scaffoldKey});

  @override
  State<SideMenuState> createState() => _SideMenuStateState();
}

class _SideMenuStateState extends State<SideMenuState> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top >
        35; // notch es el espacio que tiene los ios en la parte superior
    return NavigationDrawer(
        onDestinationSelected: (value) {
          setState(() {
            navDrawerIndex = value;
          });

          final menuItem = appMenuItems[value];
          // Navigator.of(context).pop(); //Tambien sirve para cerrar el navigator menu
          context.push(menuItem.link);
          widget.scaffoldKey.currentState?.closeDrawer();
        },
        selectedIndex: navDrawerIndex,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20, 16, 10),
            child: const Text('Dashboard'),
          ),
          ...appMenuItems.sublist(0, 3).map(
                (item) => NavigationDrawerDestination(
                    icon: Icon(item.icon), label: Text(item.title)),
              ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
            child: Text('Controllers'),
          ),
          ...appMenuItems.sublist(4, 8).map(
                (item) => NavigationDrawerDestination(
                    icon: Icon(item.icon), label: Text(item.title)),
              ),
        ]);
  }
}
