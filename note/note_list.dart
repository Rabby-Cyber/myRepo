import 'package:flutter/material.dart';
import 'package:my_project/note/note_detail_screen.dart';

class NoteList extends StatefulWidget {
  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NoteList'),
        leading: Icon(Icons.menu),
      ),
      
      body: ListView(
        children: [
          _noteList(
              color: Colors.blue,
              icon: Icons.keyboard_arrow_right,
              text: 'Book Flight Ticket',
              txt: 'Nov 1, 2020'),
          _noteList(
              color: Colors.yellowAccent,
              icon: Icons.videocam_sharp,
              text: 'Another Calling',
              txt: 'Next'),
          _noteList(
              color: Colors.blue,
              icon: Icons.keyboard_arrow_right,
              text: 'Book Flight Ticket',
              txt: 'Nov 1, 2020'),
          _noteList(
              color: Colors.blue,
              icon: Icons.keyboard_arrow_right,
              text: 'Book Flight Ticket',
              txt: 'Nov 1, 2020'),
          _noteList(
              color: Colors.blue,
              icon: Icons.keyboard_arrow_right,
              text: 'Book Flight Ticket',
              txt: 'Nov 1, 2020'),
          _noteList(
              color: Colors.blue,
              icon: Icons.keyboard_arrow_right,
              text: 'Book Flight Ticket',
              txt: 'Nov 1, 2020'),
          _noteList(
              color: Colors.blue,
              icon: Icons.keyboard_arrow_right,
              text: 'Book Flight Ticket',
              txt: 'Nov 1, 2020'),
          _noteList(
              color: Colors.blue,
              icon: Icons.keyboard_arrow_right,
              text: 'Book Flight Ticket',
              txt: 'Nov 1, 2020'),
          _noteList(
              color: Colors.blue,
              icon: Icons.keyboard_arrow_right,
              text: 'Book Flight Ticket',
              txt: 'Nov 1, 2020'),
          _noteList(
              color: Colors.blue,
              icon: Icons.keyboard_arrow_right,
              text: 'Book Flight Ticket',
              txt: 'Nov 1, 2020'),
          _noteList(
              color: Colors.blue,
              icon: Icons.keyboard_arrow_right,
              text: 'Book Flight Ticket',
              txt: 'Nov 1, 2020'),
          _noteList(
              color: Colors.blue,
              icon: Icons.keyboard_arrow_right,
              text: 'Book Flight Ticket',
              txt: 'Nov 1, 2020'),
          _noteList(
              color: Colors.blue,
              icon: Icons.keyboard_arrow_right,
              text: 'Book Flight Ticket',
              txt: 'Nov 1, 2020'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigator();
        },
        child: Icon(Icons.add),
        tooltip: 'Add Something',
      ),
    );
  }

  _noteList({
    Color color,
    // var image,
    IconData icon,
    var text,
    var txt,
  }) {
    return Card(
      child: ListTile(
        onTap: () {
          navigator();
        },
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon),
        ),
        title: Text(text),
        subtitle: Text(txt),
        trailing: Icon(Icons.delete),
        // focusColor: Color(0xFF330F0F),
      ),
    );
  }

  navigator() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NoteDetailScreen(),
        ));
  }
}
