import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Home(),
  )
  );
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();
  String result ='0';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Sum Two of Number'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // first input field
            Padding(padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter 1st number',
                  hintText: 'Enter 1st number',
                ),
                controller: num1,
              ),
            ),
            //second input filed
            Padding(padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter 2nd number',
                  hintText: 'Enter 2nd number',
                ),
                controller: num2,
              ),
            ),
            RaisedButton(
              color: Colors.teal,
              child: Text('ADD'),
              onPressed: (){
                setState((){
                  int sum = int.parse(num1.text) + int.parse(num2.text);
                  result = sum.toString();
                });
              },
            ),
            SizedBox(height: 15),
            new Text(result,
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),),
          ],
        ),
      ),
    );
  }
}
