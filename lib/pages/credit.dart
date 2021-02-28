import 'package:flutter/material.dart';
import 'package:walkto/widgets/TombolBawah.dart';
import 'package:walkto/pages/home.dart';


class Credit extends StatefulWidget{
	@override
	_CreditState createState()=>_CreditState();	
}

class _CreditState extends State<Credit>{
	@override
	Widget build(BuildContext context){
		return Scaffold(
      appBar: AppBar(
        title: Text('WalkTo'),
      ),
      body:Text('WalkTo'),
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

  
}
