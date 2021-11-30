import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plants App',
      home: MyHomePage(),
    );
  }
}

// IMAGES

var trendImg =
    'https://static.standard.co.uk/2021/07/26/17/Flowerbox-houseplants-collectionjpg?width=640&auto=webp&quality=75&crop=968%3A645%2Csmart';

var flatImg =
    '';


// COLORS
var textgreen = Color(0xFF2bb209);
var icongreen = Color(0xFF6dc20a);

var yellow = Color(0xFFe5f427);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: MyActionButton(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        backgroundColor: Colors.white,
        color: Colors.grey,
        activeColor: textgreen,
        // initialActiveIndex: _selectedNavbar,
        // onTap: _changeSelectedNavBar,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 16.0),
            MyAppBar(),
            SizedBox(height: 16.0),
            PlantsListview(),
            SizedBox(height: 16.0),
            //SelectTypeSection(),
            SizedBox(height: 16.0),
            MenuItemsList()
          ],
        ),
      ),
    );
  }
}

class MyAppbar extends StatelessWidget {
  const MyAppbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.home),
                  Text('Home', style: TextStyle(fontSize: 12.0))
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.search, color: Colors.black45),
                  Text('Search', style: TextStyle(fontSize: 12.0))
                ],
              ),
              Container(
                width: 100.0,
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.shop, color: Colors.black45),
                  Text(
                    'Wishlist',
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.black45,
                  ),
                  Text('Cart', style: TextStyle(fontSize: 12.0))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItemsList extends StatelessWidget {
  const MenuItemsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Popular Articles',
            style: TextStyle(fontSize: 22.0, color: Colors.black54),
          ),
          SizedBox(height: 16.0),
          MenuItem(),
          MenuItem(),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.network(
              flatImg,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          Container(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: icongreen,
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      // child: Row(
                      //   children: <Widget>[
                      //     Icon(
                      //       Icons.star,
                      //       size: 15.0,
                      //     ),
                      //     Text('4.5')
                      //   ],
                      // ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Title',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Container(
                      width: 200.0,
                      child: Text(
                        'konten',
                        style: TextStyle(color: Colors.grey),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class SelectTypeSection extends StatelessWidget {
//   const SelectTypeSection({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // final height = MediaQuery.of(context).size.height;
//     // final width = MediaQuery.of(context).size.width;
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: SingleChildScrollView(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Expanded(
//               child: Container(
//                 height: 92.0,
//                 width: 120.0,
//                 color: yellowLight,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Icon(
//                       FontAwesomeIcons.starHalfAlt,
//                       color: yellow,
//                     ),
//                     SizedBox(
//                       height: 4.0,
//                     ),
//                     Text(
//                       'Special Menu',
//                       style:
//                           TextStyle(color: yellow, fontWeight: FontWeight.w500),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               height: 92.0,
//               width: 120.0,
//               color: redLight,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Icon(
//                     FontAwesomeIcons.solidClock,
//                     color: red,
//                   ),
//                   SizedBox(
//                     height: 4.0,
//                   ),
//                   Text(
//                     'Book a Table',
//                     style: TextStyle(color: red, fontWeight: FontWeight.w500),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               height: 92.0,
//               width: 124.0,
//               color: blueLight,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Icon(
//                     FontAwesomeIcons.solidLaugh,
//                     color: blue,
//                   ),
//                   SizedBox(
//                     height: 4.0,
//                   ),
//                   Text(
//                     'Caterings',
//                     style: TextStyle(color: blue, fontWeight: FontWeight.w500),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class PlantsListview extends StatelessWidget {
  const PlantsListview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ItemCard(),
            ItemCard(),
            ItemCard(),
            ItemCard(),
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.menu_rounded,
            color: Colors.grey,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'PLANTS',
                      style: TextStyle(
                          color: textgreen,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          letterSpacing: 1.1),
              ),
              Text(
                'Home Gardening',
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ],
          ),

          Icon(
            Icons.notifications_active_rounded,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
          height: 160.0,
          width: 300.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(trendImg), fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
              Container(
                height: 160.0,
                width: 300.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black.withOpacity(0.1), Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Text(
                      'TRENDING',
                      style: TextStyle(
                          color: yellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          letterSpacing: 1.1),
                    ),
                    Text(
                      'Easy Way To Plant!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          letterSpacing: 1.1),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
