import 'package:flutter/material.dart';

class PalettesPage extends StatelessWidget {
  const PalettesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade600,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        foregroundColor: Colors.white,
        title: const Text(
          "Palettes",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
