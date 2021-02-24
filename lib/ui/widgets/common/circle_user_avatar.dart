import 'package:flutter/material.dart';

/// Circle avatar with First 2 Characters of user [name]
class CircleUserAvatar extends StatelessWidget {
  const CircleUserAvatar({
    Key key,
    @required this.name,
    this.radius,
  }) : super(key: key);
  final String name;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      child: Text(
        name.split(" ").map((e) => e[0].toUpperCase()).take(2).join(" "),
      ),
    );
  }
}
