import 'package:flutter/material.dart';
import 'package:seat_reservation/app/app.dart';
import 'package:seat_reservation/app/di/di.dart';

void main() => init().then((_) => runApp(const App()));
