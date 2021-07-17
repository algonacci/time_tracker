import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  const CustomRaisedButton(
      {Key? key,
      required this.color,
      this.borderRadius: 25,
      this.height: 50,
      required this.onPressed,
      required this.child})
      : super(key: key);
  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: RaisedButton(
        child: child,
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        )),
        onPressed: onPressed,
      ),
    );
  }
}
