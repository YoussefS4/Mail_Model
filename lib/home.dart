import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mail_app/contacts.dart';
import 'package:mail_app/emails.dart';
import 'package:mail_app/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {



  int _currentIndex = 0;
  final nav=[
    Center(child: Text('Contacts'),),
    Center(child: Text('Emails'),),
    Center(child: Text('Profile'),),
  ];

  final tabs=[
    Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Contacts(
                name: 'Youssef Soultan',
                mail: 'youssef@gmail.com',
                phone: '01388488939',
              ),
              Contacts(
                name: 'Ahmed Mohammed',
                mail: 'ahmed@gmail.com',
                phone: '01884900202',
              ),
              Contacts(
                name: 'Ziad Mahmoud',
                mail: 'ziad@gmail.com',
                phone: '016789302003',
              ),
              Contacts(
                name: 'Kareem Yassen',
                mail: 'Kareem@gmail.com',
                phone: '01935484330',
              ),
            ],
          ),
        ),
      ),
    ),
    Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              Emails(sender: 'youssef@gmail.com'),
              Emails(sender: 'ziad@gmail.com'),
              Emails(sender: 'mahmoud@gmail.com'),
              Emails(sender: 'mohammed@gmail.com'),
              Emails(sender: 'kareem@gmail.com'),
              Emails(sender: 'yassen@gmail.com'),
              Emails(sender: 'sleem@gmail.com'),
              Emails(sender: 'marwan@gmail.com'),

            ],
          ),
        ),
      ),

    Scaffold(
      body: Profile(),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: nav[_currentIndex],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepOrange,
                Colors.orangeAccent,
                Colors.deepOrange,
              ],
              begin: Alignment.bottomRight,
              end: Alignment.centerLeft
            )
          ),
        ),
        elevation: 20.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors:[
                      Colors.deepOrange,
                      Colors.orangeAccent
                    ]
                )
              ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      Text('Youssef Soultan',style: TextStyle(fontSize: 18.0,),),
                      Text('youssefsoultan5@gmail.com')
                    ],
                  ),
                ),
            ),
            CustomTile(Icons.all_inbox,'All Inboxes'),
            CustomTile(Icons.star_border,'Starred'),
            CustomTile(Icons.send_rounded,'Sent'),
            CustomTile(Icons.drafts,'Draft'),
            CustomTile(Icons.delete_forever_rounded,'Trash'),
          ],
        ),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_currentIndex ,
        items: [

          BottomNavigationBarItem(
              icon: Icon(Icons.contacts_outlined),
              label: 'Contact',
              backgroundColor: Colors.deepOrange
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.email),
              label: 'Email',
              backgroundColor: Colors.deepOrange
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.deepOrange
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}


class CustomTile extends StatelessWidget {

  IconData icon;
  String text;
  CustomTile(this.icon,this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12,))
        ),
        child: InkWell(
          child: Row(
            children: [
              Icon(icon),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    text,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
