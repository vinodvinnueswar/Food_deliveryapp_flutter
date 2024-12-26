import'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12)
        ),
         child: Row(
           children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Icon(Icons.search_rounded),
                height: 40,
              ),
            ),
             Expanded(
               child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search Your Food',
             
                ),
               ),
             ),
           ],
         ),
      ),
    );
  }
}