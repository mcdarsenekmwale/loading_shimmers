import 'package:flutter/material.dart';

class ExploreSearchField extends StatelessWidget {
  const ExploreSearchField({
    super.key,
    this.controller});

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(
          top: 10.0
      ),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: const Color(0xFF232222),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: const [
            BoxShadow(
              color:  Color(0xFF2C2C2F),
              offset: Offset(0.4, 1),
              blurRadius: 1.0,
            )
          ]
      ),
      child: Center(
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              fillColor: const Color(0xFF2C2C2F),
              hintText: 'Search',
              hintStyle: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.grey.shade800,
              ),

              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey.shade800,
              ),
              border: InputBorder.none
          ),
        ),
      ),
    );
  }
}
