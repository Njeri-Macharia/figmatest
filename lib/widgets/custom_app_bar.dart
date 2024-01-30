import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Search Product",
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: const Icon(CupertinoIcons.search),
                border:const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: IconButton(
              onPressed: () {
                debugPrint("you have searched for ${_searchController.text}");
              },
              icon: const Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
