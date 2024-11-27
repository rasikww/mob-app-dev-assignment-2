
import 'package:flutter/material.dart';

class ToggleButton extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const ToggleButton({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: value,
      activeColor: Colors.blueGrey[200],
      onChanged: onChanged,
    );
  }
}
