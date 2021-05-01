import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Emails extends StatelessWidget {

  String sender;
  Emails( {required this.sender});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 50.0,
      margin: EdgeInsets.symmetric(vertical: 15.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.orangeAccent,
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),

        ],
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.mail,color: Colors.white,),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        sender,
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
