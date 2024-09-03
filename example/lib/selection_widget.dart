import 'package:flutter/material.dart';

class SelectionWidget extends StatelessWidget {
  final void Function() onTap;
  final String text;
  final String image;

  const SelectionWidget({
    super.key,
    required this.onTap,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(10),
          height: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 2, color: Colors.black),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image, scale: 3),
                const SizedBox(height: 50),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
