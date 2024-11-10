import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BasicProject(),
  ));
}

class BasicProject extends StatefulWidget {
  @override
  State<BasicProject> createState() => _BasicProjectState();
}

class _BasicProjectState extends State<BasicProject> {
  int level = 0;
  List<String> skills = ['Flutter', 'React js', 'Node js'];
  String name = 'fatima';
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text('Basic project card'),
        centerTitle: true,
        backgroundColor: Colors.grey[500],
        elevation: 0.0,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(40.0),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  level += 1;
                });
              },
              child: Icon(Icons.add),
              backgroundColor: Colors.grey[700],
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (level > 0) level -= 1;
              });
            },
            child: Icon(Icons.remove),
            backgroundColor: Colors.grey[700],
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/animated.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Row(
              children: [
                Expanded( // Ensure the TextField does not overflow
                  child: TextField(
                    controller: nameController, // Use controller
                    onChanged: (text) {
                      setState(() {
                        name = text;
                      });
                    },
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Enter your name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10), // Space between TextField and Button
                IconButton(
                  onPressed: () {
                    setState(() {
                      nameController.clear(); // Clear text field
                      name = ''; // Reset the name variable
                    });
                  },
                  icon: Icon(Icons.clear),
                  color: Colors.grey[700],
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Hello ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.grey,
                      letterSpacing: 2.0,
                    ),
                  ),
                  TextSpan(
                    text: "$name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.amberAccent,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0), // Adding space between two widgets
            SizedBox(height: 30.0),
            Text(
              'Your Level',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0), // Adding space between two widgets
            Text(
              '$level',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(Icons.email, color: Colors.grey[300]),
                SizedBox(width: 10.0),
                Text(
                  'fatimabittar0tec@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Divider(
              height: 40.0,
              color: Colors.grey[800],
            ),
            Column(
              children: skills.map((skill) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      skill,
                      style: TextStyle(fontSize: 18.0, color: Colors.grey[700]),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
