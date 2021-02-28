/*
  author    : Aziz Amerul Faozi
  deskripsi : this code just for testing.
*/

import 'package:flutter/material.dart';
import 'package:walkto/widgets/TombolBawah.dart';
import 'package:walkto/pages/home.dart';
import 'package:walkto/pages/settings.dart';

class Birthdays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WalkTo'),
      ),
      body:_buildBody(context),
      bottomNavigationBar: const TombolBawah(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade200,
        onPressed: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RaisedButton(
                    child: Text('Contact Us'),
                    onPressed: ()=>contactUs(context),
                  ),
                  RaisedButton(
                    child: Text('Test'),
                    onPressed: ()=>testUs(context),
                  ),
                   RaisedButton(
                    child: Text('Setting'),
                    onPressed: ()=>Setting(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void contactUs(BuildContext context){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('Contact Us'),
            content: Text('Mail Us at hello@world.com'),
            actions: <Widget>[
              FlatButton(
                child: Text('Close'),
                onPressed:  ()=>Navigator.of(context).pop(),
              ),
            ],
          );
        }
    );

  }

  void testUs(BuildContext context){
      showDialog(
          context: context,
          builder: (BuildContext context){
            return Scaffold(
             appBar: AppBar(
               title: Text('testUs'),
             ),
             body: Text('Minotaur'),
            );
          }
    );
      
  }
}