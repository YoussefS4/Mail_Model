import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Profile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.3,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepOrange,
                  Colors.orangeAccent,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child:
                    Image(
                        width: 60.0,
                        image: NetworkImage('https://store-images.s-microsoft.com/image/apps.28355.9007199266248608.6a399a57-b260-4ce9-b265-c47558f755e1.b4124129-26e8-401d-9989-f8689f69fa3a')
                    ),
                  ),

                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('Youssef Soultan',style: TextStyle(fontSize: 18.0,),),
                Text('Cairo')
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: Text('Your Information'),
                  leading: Icon(Icons.person),
                ),
                ListTile(
                  title: Text('History'),
                  leading: Icon(Icons.history_rounded),
                ),
                ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings),
                ),
                ListTile(
                  title: Text('About Us'),
                  leading: Icon(Icons.info_outline),
                ),
                ListTile(
                  title: Text('Log Out'),
                  leading: Icon(Icons.logout),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
