import 'package:flutter/material.dart';

class Credit extends StatefulWidget{
	@override
	_CreditState createState()=>_CreditState();	
}

class _CreditState extends State<Credit>{
	@override
	Widget build(BuildContext context){
		return Scaffold(
			appBar: AppBar(
				title: Text('Home Mantap'),
			),
			body: Text('Mantap'),
		);
	}
}
