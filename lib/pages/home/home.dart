import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5F67EA),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Transform(
            transform: Matrix4.identity()..rotateZ(20),
            origin: const Offset(150, 50),
            child: Image.asset(
              'assets/images/bg_liquid.png',
              width: 200,
            ),
          ),
          Positioned(
            right: 0,
            top: 150,
            child: Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(100, 100),
              child: Image.asset(
                'assets/images/bg_liquid.png',
                width: 200,
              ),
            ),
          ),
          Container(),
        ],
      )),
      bottomNavigationBar: NavigationBar(),
    );
  }

  Widget NavigationBar() {
    return Container(
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            selectedItemColor: const Color(0XFF5F67AE),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey.withOpacity(0.7),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home_rounded,
                  size: 50,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Application',
                icon: Icon(
                  Icons.library_add_rounded,
                  size: 50,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Film',
                icon: Icon(
                  Icons.movie_rounded,
                  size: 50,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Book',
                icon: Icon(
                  Icons.book_rounded,
                  size: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
