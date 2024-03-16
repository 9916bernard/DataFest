import 'package:flutter/material.dart';

class IconLabelButton extends StatelessWidget {
  final IconData iconData;
  final String label;

  const IconLabelButton({
    Key? key,
    required this.iconData,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(iconData),
          onPressed: () {
            // TODO: Implement navigation or functionality
          },
        ),
        Text(label),
      ],
    );
  }
}
