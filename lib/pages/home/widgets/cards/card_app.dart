import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {
  final Widget child;

  const CardApp({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Container(
        child: child,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(3)),
      ),
    );
  }
}
