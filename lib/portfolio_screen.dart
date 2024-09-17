import 'package:flutter/material.dart';
import 'package:portfolio_app/filter_button.dart';
import 'package:portfolio_app/widgets/tab_bar_widget.dart';
import 'package:portfolio_app/widgets/card_widget.dart';
import 'package:portfolio_app/widgets/search_bar.dart' as custom;
import 'package:portfolio_app/widgets/bottom_nav.dart';

class PortfolioScreen extends StatefulWidget {
  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  List<String> tabs = ['Project', 'Saved', 'Shared', 'Achievement'];
  String activeTab = 'Project';
  List<Map<String, String>> data = [
    {
      'title': 'Kemampuan Merangkum Tulisan',
      'subtitle': 'BAHASA SUNDA',
      'author': 'Oleh Al-Baiqi Samaan',
      'grade': 'A',
      'image': 'assets/images/image1.jpg',
    },
    {
      'title': 'Code and creativity',
      'subtitle': 'My Web Development projects',
      'author': 'Oleh Al-Baiqi Samaan',
      'grade': 'A',
      'image': 'assets/images/image2.jpg',
    },
    {
      'title': 'Kemampuan Merangkum Tulisan',
      'subtitle': 'BAHASA SUNDA',
      'author': 'Oleh Al-Baiqi Samaan',
      'grade': 'A',
      'image': 'assets/images/image1.jpg',
    },
    {
      'title': 'Code and creativity',
      'subtitle': 'My Web Development projects',
      'author': 'Oleh Al-Baiqi Samaan',
      'grade': 'A',
      'image': 'assets/images/image2.jpg',
    },
    {
      'title': 'Kemampuan Merangkum Tulisan',
      'subtitle': 'BAHASA SUNDA',
      'author': 'Oleh Al-Baiqi Samaan',
      'grade': 'A',
      'image': 'assets/images/image1.jpg',
    },
    {
      'title': 'Code and creativity',
      'subtitle': 'My Web Development projects',
      'author': 'Oleh Al-Baiqi Samaan',
      'grade': 'A',
      'image': 'assets/images/image2.jpg',
    },
    {
      'title': 'Kemampuan Merangkum Tulisan',
      'subtitle': 'BAHASA SUNDA',
      'author': 'Oleh Al-Baiqi Samaan',
      'grade': 'A',
      'image': 'assets/images/image1.jpg',
    },
    {
      'title': 'Code and creativity',
      'subtitle': 'My Web Development projects',
      'author': 'Oleh Al-Baiqi Samaan',
      'grade': 'A',
      'image': 'assets/images/image2.jpg',
    },
    {
      'title': 'Kemampuan Merangkum Tulisan',
      'subtitle': 'BAHASA SUNDA',
      'author': 'Oleh Al-Baiqi Samaan',
      'grade': 'A',
      'image': 'assets/images/image1.jpg',
    },
    {
      'title': 'Code and creativity',
      'subtitle': 'My Web Development projects',
      'author': 'Oleh Al-Baiqi Samaan',
      'grade': 'A',
      'image': 'assets/images/image2.jpg',
    },
    // Additional data...
  ];

  String query = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color of the entire screen to white
      appBar: AppBar(
        backgroundColor: Colors.white, // Make AppBar background white
        elevation: 0, // Remove shadow/elevation from AppBar
        title: const Text(
          'Portfolio',
          style: TextStyle(color: Colors.black), // Ensure text is visible on a white background
        ),
        iconTheme: IconThemeData(color: Colors.black), // Set icon colors to black
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag, color: Color.fromARGB(255, 221, 104, 71), size: 28),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications, color: Color.fromARGB(255, 221, 104, 71), size: 28),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.white, // Set the container's background to white
        child: Stack(
          children: [
            Column(
              children: [
                TabBarWidget(
                  tabs: tabs,
                  activeTab: activeTab,
                  onTap: (tab) {
                    setState(() {
                      activeTab = tab;
                    });
                  },
                ),
                custom.SearchBar(
                  onChanged: (value) {
                    setState(() {
                      query = value;
                    });
                  },
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      var item = data[index];
                      if (item['title']!.toLowerCase().contains(query.toLowerCase())) {
                        return CardWidget(item: item); // Ensure your CardWidget also has no elevation
                      }
                      return Container();
                    },
                  ),
                ),
              ],
            ),
            // Floating FilterButton centered
            Positioned(
              bottom: 20, // Adjust this value as needed
              left: 0,
              right: 0,
              child: Center(
                child: FilterButton(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}


