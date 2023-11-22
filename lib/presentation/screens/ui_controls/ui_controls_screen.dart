import 'package:flutter/material.dart';

class UIControlsScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';
  const UIControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls Screen'),
      ),
      body: const _UIControlsView(),
    );
  }
}

enum Transportation { car, plane, boat, submarine }

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

class _UIControlsViewState extends State<_UIControlsView> {
  bool isDeveloper = true;
  Transportation selectTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('Developer Mode'),
            subtitle: const Text('Enable developer mode'),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),
        RadioListTile(
            title: const Text('Car'),
            subtitle: const Text('Travel by car'),
            value: Transportation.car,
            groupValue: selectTransportation,
            onChanged: (value) => setState(() {
                  selectTransportation = Transportation.car;
                })),
        RadioListTile(
            title: const Text('Plane'),
            subtitle: const Text('Travel by plane'),
            value: Transportation.plane,
            groupValue: selectTransportation,
            onChanged: (value) => setState(() {
                  selectTransportation = Transportation.plane;
                })),
        RadioListTile(
            title: const Text('Boat'),
            subtitle: const Text('Travel by boat'),
            value: Transportation.boat,
            groupValue: selectTransportation,
            onChanged: (value) => setState(() {
                  selectTransportation = Transportation.boat;
                })),
        RadioListTile(
            title: const Text('Submarine'),
            subtitle: const Text('Travel by submarine'),
            value: Transportation.submarine,
            groupValue: selectTransportation,
            onChanged: (value) => setState(() {
                  selectTransportation = Transportation.submarine;
                }))
      ],
    );
  }
}
