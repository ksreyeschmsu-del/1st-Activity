import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "About Us",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlueAccent,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "We provide reliable computer repair services.",
            style: TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 15),

          // Cupertino Button
          const CupertinoButton(
            color: Colors.blueGrey,
            onPressed: null,
            child: Text("Cupertino Style Button"),
          ),

          const SizedBox(height: 15),

          // Custom Button (reuse from HomePage)
          CustomButton(
            text: "Custom Action",
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Custom Button Clicked")),
              );
            },
          ),
        ],
      ),
    );
  }
}
