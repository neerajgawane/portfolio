import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 80.h, // Distance from the bottom
      left: 0,
      right: 0,
      child: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            // Define filter action here
          },
          icon: Icon(Icons.filter_list, color: Colors.white), // Filter icon
          label: Text(
            'Filter',
            style: TextStyle(color: Colors.white, fontSize: 16.sp), // Adjust text size
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFDD6847), // Match the orange button color in the image
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w), // Adjust padding for a larger button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.r), // Rounded edges for the button
            ),
            elevation: 5, // Add elevation to give a floating effect
          ),
        ),
      ),
    );
  }
}


