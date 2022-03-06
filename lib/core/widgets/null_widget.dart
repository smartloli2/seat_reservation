import 'package:flutter/material.dart';

@immutable
class NullWidget extends StatelessWidget {
  const NullWidget() : _expanded = false;

  const NullWidget.expanded() : _expanded = true;

  final bool _expanded;

  @override
  Widget build(BuildContext context) {
    const box = SizedBox.shrink();
    return _expanded ? const Expanded(child: box) : box;
  }
}

@immutable
class NullScreen extends StatelessWidget {
  const NullScreen();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        top: false,
        child: Center(
          child: NullWidget(),
        ),
      ),
    );
  }
}
