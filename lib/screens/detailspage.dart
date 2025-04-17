// detailspage.dart
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const DetailsPage({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  imageUrl,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 37,
                  right: 9,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back, size: 30, color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                      ),
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              title,
                              style: TextStyle(
                                color: Color(0xFF5A5A5A),
                                fontSize: 22,
                                fontFamily: 'Somar',
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              description,
                              style: TextStyle(
                                color: Color(0xFF5A5A5A),
                                fontSize: 18,
                                fontFamily: 'Somar',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
