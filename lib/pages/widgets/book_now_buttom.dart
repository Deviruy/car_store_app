import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookNowButton extends StatelessWidget {
  const BookNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45),
          bottomRight: Radius.circular(45),
        ),
      ),
      child: Text(
        "Book Now",
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    );
  }
}
