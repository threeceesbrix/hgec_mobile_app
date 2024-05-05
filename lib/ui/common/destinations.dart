import 'package:flutter/material.dart';

class Destination {
  const Destination(this.icon, this.label);
  final IconData icon;
  final String label;
}

const List<Destination> destinations = <Destination>[
  Destination(Icons.home_outlined, 'Home'),
  Destination(Icons.calendar_month_outlined, 'Meetings'),
  Destination(Icons.logout_outlined, 'Logout')
];
