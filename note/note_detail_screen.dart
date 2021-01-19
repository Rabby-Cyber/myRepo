import 'package:flutter/material.dart';
import 'package:my_project/note/note_list.dart';

class NoteDetailScreen extends StatefulWidget {
  @override
  _NoteDetailScreenState createState() => _NoteDetailScreenState();
}

class _NoteDetailScreenState extends State<NoteDetailScreen> {
  var myValue = ['High', 'Low'];
  var itemSelected = 'High';
  TextEditingController textcontroller = TextEditingController();
  TextEditingController desController = TextEditingController();
  // ignore: deprecated_member_use
  // TextStyle _textStyle=Theme.of(context).textTheme.title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Note'),
        leading: IconButton(
          onPressed: () {
            naviGatorDetail();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 10.0),
            child: DropdownButton<String>(
              onChanged: (value) {
                setState(() {
                  itemSelected = value;
                });
              },
              items: myValue
                  .map(
                    (String value) => DropdownMenuItem<String>(
                      child: Text(value),
                      value: value,
                    ),
                  )
                  .toList(),
              value: itemSelected,
            ),
          ),
          SizedBox(height: 5,),
          // Spacer(flex: 10,),
          myTextField(text: 'Title', txt: 'Enter Title'),
          // SizedBox(
          //   height: 10,
          // ),
          myTextField(text: 'Description', txt: 'Enter Description'),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: RaisedButton(
                    elevation: 5.0,
                    onPressed: () {},
                    color: Colors.deepPurple,
                    child: Text(
                      'Save',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  child: RaisedButton(
                    elevation: 5.0,
                    onPressed: () {},
                    color: Colors.deepPurple,
                    child: Text(
                      'Delete',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  myTextField({
    var text,
    var txt,
  }) {
    return Container(
      padding:
          EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0, right: 15.0),
      child: TextField(
        // controller: textcontroller,

        decoration: InputDecoration(
          labelText: text,
          hintText: txt,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
    );
  }

  naviGatorDetail() {
    Navigator.pop(
        context,
        MaterialPageRoute(
          builder: (context) => NoteList(),
        ));
  }
}
