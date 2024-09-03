import 'package:example/colors_page.dart';
import 'package:example/gradients_page.dart';
import 'package:example/palettes_page.dart';
import 'package:example/selection_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Row(
          children: [
            SelectionWidget(
              text: "Gradients",
              image: "assets/gradient.png",
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GradientsPage()),
              ),
            ),
            SelectionWidget(
              text: "Colors",
              image: "assets/color.png",
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ColorsPage()),
              ),
            ),
            SelectionWidget(
              text: "Palettes",
              image: "assets/palette.png",
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PalettesPage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
