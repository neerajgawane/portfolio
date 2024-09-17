import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardWidget extends StatelessWidget {
  final Map<String, String> item;

  const CardWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r), // Rounded corners
      ),
      clipBehavior: Clip.antiAlias, // Ensures the image sticks to the borders
      color: Colors.white, // Set the card background color to white
      child: Stack(
        children: [
          // Main row for image and text
          Row(
            children: [
              // Image section that touches the borders
              Container(
                width: 100.w, // Set width to maintain the image proportion
                height: 115.h, // Adjust the height so the image touches the top and bottom
                child: Image.asset(
                  item['image']!,
                  fit: BoxFit.cover, // Ensures image covers the space
                ),
              ),
              // Text and Badge Section
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Text(
                        item['title']!,
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                      SizedBox(height: 4.h), // Spacing between title and subtitle
                      // Subtitle
                      Text(
                        item['subtitle']!,
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                      SizedBox(height: 4.h),
                      // Author
                      Text(
                        item['author']!,
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.grey[600],
                          fontFamily: 'OpenSans',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Grade badge positioned in front of the subtitle and near the right border
          Positioned(
            right: 16.w,  // Move it closer to the right border
            top: 65.h,    // Adjust the vertical position so it's in front of the subtitle
            child: Container(
              width: 56.w,
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h), // Adjusted padding for better spacing
              decoration: BoxDecoration(
                color: Colors.amber.shade600, // Bold amber color
                borderRadius: BorderRadius.circular(12.r), // Rounded corners for an oval shape
                 boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15), // Light black shadow with reduced opacity
                    blurRadius: 8.r, // How much the shadow should blur
                    offset: Offset(0, 4.h), // Horizontal and vertical offset
                  ),
                ],
              
              ),
              child: Center(
                child: Text(
                  item['grade']!,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white, // White text for contrast
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


