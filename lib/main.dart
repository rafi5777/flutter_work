import 'package:drawer_widets/Check.dart';
import 'package:drawer_widets/Home.dart';
import 'package:drawer_widets/News.dart';
import 'package:drawer_widets/Town.dart';
import 'package:drawer_widets/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Drawer',
    theme: ThemeData(
      primarySwatch: Colors.brown,
    ),
    home: MyApp(),

  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drwer Widget'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('rafiul'),
              accountEmail: Text('rafiul@gmail.com'),
              currentAccountPicture: CircleAvatar(child: Text('rafi'),),
              decoration: BoxDecoration(
                color: Colors.black12
              ),
              otherAccountsPictures: [
                CircleAvatar(child: Text('hasan'),),
                CircleAvatar(child: Text('robin'),)

              ],

            ),
            ListTile(
              title: Text("Home"),
              trailing: Icon(Icons.add_to_home_screen),
              onTap:(){
                print('Home');
                Navigator.push(context, MaterialPageRoute(builder: (cnx){return Home();}));
              },

            ),
            ListTile(
              title: Text("check"),
              trailing: Icon(Icons.check),
              onTap:(){
                print('Home');
                Navigator.push(context, MaterialPageRoute(builder: (cnx){return Check();}));
              },
            ),
            ListTile(
              title: Text("town"),
              trailing: Icon(Icons.house),
              onTap:(){
                print('Home');
                Navigator.push(context, MaterialPageRoute(builder: (cnx){return Town();}));
              },
            ),
            ListTile(
              title: Text("News"),
              trailing: Icon(Icons.add_to_home_screen),
              onTap:(){
                print('Home');
                Navigator.push(context, MaterialPageRoute(builder: (cnx){return News();}));
              },
            ),
            ListTile(
              title: Text("Setting"),
              trailing: Icon(Icons.add_to_home_screen),
              onTap:(){
                print('Home');
                Navigator.push(context, MaterialPageRoute(builder: (cnx){return Setting();}));
              },
            ),
          ],
        ),
      ),
    );
  }
}


