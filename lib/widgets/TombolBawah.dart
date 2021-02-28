import 'package:flutter/material.dart';
import 'package:walkto/pages/birthdays.dart';
import 'package:walkto/pages/gratitude.dart';
import 'package:walkto/pages/reminders.dart';
import 'package:walkto/pages/credit.dart';


class TombolBawah extends StatelessWidget {

  const TombolBawah({Key key,}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blue.shade200,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.access_alarm),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Birthdays(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.bookmark_border),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Gratitude(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.flight),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Reminders(),
                  ),
                );
              },
            ),
            Divider(),
          ],
        ),
    );
  }
}