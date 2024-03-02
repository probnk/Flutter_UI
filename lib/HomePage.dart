import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:nike_shoes_ui/Catagory.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bottomNavbar() {
    return Container(
      width: double.infinity,
      color: Colors.black,
      padding: EdgeInsets.only(bottom: 10, top: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: GNav(
            gap: 5,
            curve: Curves.easeIn,
            backgroundColor: Colors.black,
            rippleColor: Colors.cyan,
            textStyle: TextStyle(
                color: Colors.white,
                fontSize: 16
            ),
            tabBackgroundGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue.shade500, Colors.purple.shade500]
            ),
            tabs: [
              GButton(
                  iconColor: Colors.white,
                  iconActiveColor: Colors.white,
                  icon: LineIcons.home,
                  text: 'Home'
              ),
              GButton(
                  iconColor: Colors.white,
                  iconActiveColor: Colors.white,
                  icon: LineIcons.heart,
                  text: 'Favourite'
              ),
              GButton(
                  iconColor: Colors.white,
                  iconActiveColor: Colors.white,
                  icon: LineIcons.addToShoppingCart,
                  text: 'Cart'
              ),
              GButton(
                  onPressed:(){},
                  iconSize: 25,
                  iconColor: Colors.white,
                  iconActiveColor: Colors.white,
                  icon: LineIcons.user,
                  text: 'Profile'
              ),
            ]
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavbar() ,
      body: Padding(
        padding: const EdgeInsets.only(left: 8,right: 2),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.sort,size: 35)
                ),
                Text('NIKE',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
                Image.asset('assets/nikeicon.png',height: 60,width: 60,)
              ],
            ),
          Stack(
            children: [
              RichText(
                  text: TextSpan(
                  text:'AIRMAX',
                  style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.black),
                  children: [
                    TextSpan(
                      text: '\n2020',
                      style: TextStyle(fontSize: 40)
                    ),
                    TextSpan(
                      text: '\n\$200   →',
                      style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)
                    )
                ])
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 100),
                child: Image.asset('assets/nike.png'),
              )
            ],
          ),
            SizedBox(height: 20,),
            Text('Items',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)
            ),
          Catagory()
          ],
        ),
      ),
    );
  }
}
