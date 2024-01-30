import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SaleWidget extends StatelessWidget {
  const SaleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue[300],
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      constraints: const BoxConstraints(
        maxHeight: 200,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Supersale\nDiscount 40%",
                style: TextStyle(
                  fontFamily: "Monterey",
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.left_chevron,
                ),
                label: const Text("Get Discout"),
              ),
            ],
          ),
          Image.asset("assets/images/happy.png"),
        ],
      ),
    );
  }
}
