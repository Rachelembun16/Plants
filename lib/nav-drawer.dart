import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.folder,
              text: 'My Files',
              onTap: () => print('Tap My Files')),
          _drawerItem(
              icon: Icons.group,
              text: 'Shared with me',
              onTap: () => print('Tap Shared menu')),
          _drawerItem(
              icon: Icons.access_time,
              text: 'Recent',
              onTap: () => print('Tap Recent menu')),
          _drawerItem(
              icon: Icons.delete,
              text: 'Trash',
              onTap: () => print('Tap Trash menu')),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Labels",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                )),
          ),
          _drawerItem(
              icon: Icons.bookmark,
              text: 'Family',
              onTap: () => print('Tap Family menu')),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(
        gradient: new LinearGradient(
        colors: [Color(0xFF2bb209), Colors.lightGreen[300]],),
        borderRadius: new BorderRadius.only(
                bottomLeft: const Radius.circular(15.0),
                bottomRight: const Radius.circular(15.0),
        )
    ),
    currentAccountPicture: ClipOval(
      child: Image(
          image: NetworkImage('https://dummyimage.com/500x500/d4d4d4/12966a.png&text=U'),
          fit: BoxFit.cover),
    ),
    accountName: Text('Belajar Flutter'),
    accountEmail: Text('BelajarFlutter@gmail.com'),
  );
}
Widget _drawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              //style diganti
              color: Colors.grey[600]
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

