import 'package:flutter/material.dart';

class IsarCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final VoidCallback? onTap;
  final BorderRadius radius;

  IsarCard({required this.child, this.color, this.onTap, BorderRadius? radius})
      : radius = radius ?? BorderRadius.circular(20);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      child: InkWell(
        onTap: onTap,
        child: child,
      ),
    );
  }
}
