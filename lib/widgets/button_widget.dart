// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback callback;
  const ButtonWidget({
    required this.label,
    this.selected = false,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 110,
      child: ElevatedButton(
        onPressed: callback,
        child: Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // <-- Radius
          ),
          side: BorderSide(width: 1.0, color: Color(0xFFfdbf00)),
          backgroundColor: selected ? Color(0xFFfdbf00) : Colors.transparent,
          elevation: 0,
          //onPrimary: Colors.white,
        ),
      ),
    );
  }
}
