import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class about extends StatefulWidget {
  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: myCard(),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
      ),





    );
  }
  Widget myCard(){
    return Card(
      margin: EdgeInsets.fromLTRB(32.0, 32.0, 32.0, 32.0),
      child:
          Padding(
            padding: const EdgeInsets.all(14.0),
      child: Text("This is the first version from kennyslab\nThe idea of this is to "
          "develop an app to make remembrance of dua easy for muslims",
      style: TextStyle(color: Colors.black,
      fontSize: 18.0

      ),
      ),
          )

    );
  }
}
