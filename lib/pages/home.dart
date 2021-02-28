import 'package:flutter/material.dart';

import 'package:walkto/widgets/TombolBawah.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _tabController.addListener(_tabChanged);
  }

  @override
  void dispose() {
    super.dispose();
    @override
    void dispose() {
      _tabController.dispose();
      super.dispose();
    }

    _tabController.dispose();
  }

  void _tabChanged() {
// Check if Tab Controller index is changing, otherwise we get the notice twice
    if (_tabController.indexIsChanging) {
      print('tabChanged: ${_tabController.index}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WalkTo'),
      ),
      body: _buildBody(),
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

  /* build body */
  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildJournalHeaderImage(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 
                  _buildJournalEntry(),
                  Divider(),
                   TabBar(
                    controller: _tabController,
                    labelColor: Colors.black54,
                    unselectedLabelColor: Colors.black38,
                    tabs: [
                      Tab(
                        icon: Icon(Icons.cake),
                        text: 'Birthdays',
                      ),
                      Tab(
                        icon: Icon(Icons.sentiment_satisfied),
                        text: 'Gratitude',
                      ),
                      Tab(
                        icon: Icon(Icons.access_alarm),
                        text: 'Reminders',
                      ),
                    ],
                  ),
                  Divider(),
                  _buildJournalWeather(),
                  Divider(),
                  _buildJournalTag(),
                  Divider(),
                  _buildJournalFooterImages(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /* build journal Header image */

  Image _buildJournalHeaderImage() {
    return Image(
      image: AssetImage('assets/image/present.jpg'),
      fit: BoxFit.cover,
    );
  }
 
  /* this is journal entry */
  Column _buildJournalEntry() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'WalkTo',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(),
        Text(
          'Ini cuma startup abal abal dibuatnya pun super izzy modal dengkul',
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }

  /* this is journal weather */
  Row _buildJournalWeather() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.wb_sunny,
              color: Colors.orange,
            ),
          ],
        ),
        SizedBox(width: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  '81 Clear',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  'Desa Tegalpingen mantap',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }

  Wrap _buildJournalTag() {
    return Wrap(
      spacing: 8.0,
      children: List.generate(7, (int index) {
        return Chip(
          label: Text(
            'Gift ${index + 1}',
            style: TextStyle(
              fontSize: 10.0,
            ),
          ),
          avatar: Icon(
            Icons.card_giftcard,
            color: Colors.blue.shade300,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.grey),
          ),
          backgroundColor: Colors.grey.shade100,
        );
      }),
    );
  }

  Row _buildJournalFooterImages() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/salmon.jpg'),
          radius: 40.0,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/asparagus.jpg'),
          radius: 40.0,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/strawberries.jpg'),
          radius: 40.0,
        ),
        SizedBox(
          width: 100.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.cake),
              Icon(Icons.star_border),
              Icon(Icons.music_note),
            ],
          ),
        )
      ],
    );
  }
}
