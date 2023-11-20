import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
      title: 'Buttons',
      subTitle: 'Flutter Buttons',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItems(
      title: 'Cards',
      subTitle: 'Flutter Cards',
      link: '/cards',
      icon: Icons.credit_card_outlined),
  MenuItems(
      title: 'Animated',
      subTitle: 'Flutter Animated',
      link: '/animated',
      icon: Icons.animation_rounded),
  MenuItems(
      title: 'Tutorial',
      subTitle: 'Flutter Tutorial',
      link: '/tutorial',
      icon: Icons.document_scanner_rounded),
  MenuItems(
      title: 'Infinite Scroll',
      subTitle: 'Flutter Infinite Scroll',
      link: '/infinite_scroll',
      icon: Icons.single_bed_rounded),
  MenuItems(
      title: 'Progress Indicator',
      subTitle: 'Generales y Controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItems(
      title: 'Snackbar and Dialogs',
      subTitle: 'Flutter Labels',
      link: '/snackbar',
      icon: Icons.snapchat_rounded),
  MenuItems(
      title: 'UI Controls',
      subTitle: 'Flutter UI Controls',
      link: '/ui_controls',
      icon: Icons.dashboard_customize_rounded),
  MenuItems(
      title: 'Labels',
      subTitle: 'Flutter Labels',
      link: '/labels',
      icon: Icons.label_important_rounded),
];
