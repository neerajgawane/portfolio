import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  final List<String> tabs;
  final String activeTab;
  final ValueChanged<String> onTap;

  const TabBarWidget({
    required this.tabs,
    required this.activeTab,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Added vertical padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: tabs.map((tab) {
          bool isActive = activeTab == tab;
          return GestureDetector(
            onTap: () => onTap(tab),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  tab,
                  style: TextStyle(
                    fontSize: 17, // Consistent font size for both active and inactive tabs
                    color: isActive ? Colors.orange : Colors.grey, // Color change on active tab
                    fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                if (isActive)
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    height: 2, // Underline for active tab
                    width: 20,
                    color: Colors.orange,
                  )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

