import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBar extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const SearchBar({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Container(
        height: 54.h, // Adjusting height to better match the image
        decoration: BoxDecoration(
          color: Colors.white, // Background color
          borderRadius: BorderRadius.circular(25.r), // Smooth rounded corners
          border: Border.all(color: Color(0xFFEBEBEB)), // Light grey border
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16.w), // Spacing to match the image
                child: TextField(
                  onChanged: onChanged,
                  decoration: InputDecoration(
                    hintText: 'Search a project', // Placeholder text
                    hintStyle: TextStyle(color: Colors.grey.shade400), // Subtle grey for hint text
                    border: InputBorder.none, // No visible border
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 8.w), // Padding before the box
              child: Container(
                decoration: BoxDecoration (
                  color:Color.fromARGB(255, 221, 104, 71), // Orange background color for the icon box
                  borderRadius: BorderRadius.circular(10.r), // Rounded corners for the icon box
                ),
                padding: EdgeInsets.all(8.w), // Padding inside the box
                child: Icon(
                  Icons.search,
                  color: Colors.white,// White icon color
                  size: 15.w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

