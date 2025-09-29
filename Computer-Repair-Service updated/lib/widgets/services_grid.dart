import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';
import 'service_card.dart';

class ServicesGrid extends StatelessWidget {
  const ServicesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: const [
          ServiceCard(service: "PC Repair", icon: Icons.computer),
          ServiceCard(service: "Laptop Cleaning", icon: Icons.laptop),
          ServiceCard(service: "PC Building", icon: Icons.build),
          ServiceCard(service: "Virus Removal", icon: Icons.security),
        ],
      ),
    );
  }
}
