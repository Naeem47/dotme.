import 'package:flutter/material.dart';

class ToggleSwitchWidget extends StatefulWidget {
  bool getValue;
  ToggleSwitchWidget({super.key, required this.getValue});

  @override
  State<ToggleSwitchWidget> createState() => _ToggleSwitchWidgetState();
}

class _ToggleSwitchWidgetState extends State<ToggleSwitchWidget> {
  toggleSwitch(newValue1) {
    if (widget.getValue) {
      setState(() {
        widget.getValue = !widget.getValue;
      });
    } else {
      setState(() {
        widget.getValue = !widget.getValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18,
      width: 36,
      decoration: BoxDecoration(
          color: widget.getValue ? const Color(0xFF53B46A) : Colors.blue,
          borderRadius: BorderRadius.circular(24)),
      child: Transform.scale(
          scale: 1,
          child: Switch(
            onChanged: (newValue) {
              toggleSwitch(newValue);
            },
            value: widget.getValue,
            activeColor: const Color(0xFF53B46A),
            activeTrackColor: Colors.white,
            inactiveThumbColor: Colors.blue,
            inactiveTrackColor: Colors.white,
          )),
    );
  }
}
