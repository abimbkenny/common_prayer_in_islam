import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:common_prayer_in_islam/pages/Algorithm.dart';
import 'package:common_prayer_in_islam/pages/DataStructures.dart';
import 'package:common_prayer_in_islam/pages/about.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  customTile(var _title, var _index) => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AlgoExist(
                      num: _index,
                    )),
          );
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 35,vertical: 3),
          padding: EdgeInsets.all(5),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xFFFF0066)))),
          child: Row(
            children: [
              Icon(Icons.fiber_manual_record,color:Color(0xFFCC0000) ,size: 10,),
              Text(
                ' $_title',
                style: TextStyle(fontSize: 20, color: Color(0xFF330000)),
              ),
            ],
          ),
        ),
      );
  heading(var _heading) => Container(
    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
    padding: EdgeInsets.all(4),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(50) ),
      color:Color(0xFFFF3366) ,

    ),
    child: Text(

      '$_heading',
      style: TextStyle(
          letterSpacing: 1.2,
          fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),
    ),
  );

  @override
  Widget build(BuildContext context) {
    Store A = new Store();
    TextEditingController _controller = new TextEditingController();
    void find(var n) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                AlgoExist(num: A.searchResult(_controller.text))),
      );
    }

    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(20),
                       topRight: Radius.circular(20),
                       bottomRight: Radius.circular(50),
                       bottomLeft: Radius.circular(50)),
                   color: Color(0xFFFF0000)),
               height: MediaQuery.of(context).size.height * 0.3,
               width: double.infinity,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Text(
                     "COMMON DUAS & \n INVOCATION",
                     style: TextStyle(
                       fontSize: 30,
                       fontWeight: FontWeight.bold,
                       color: Colors.white,
                     ),
                     textAlign: TextAlign.center,
                   ),
                   FlatButton(onPressed: () {
                     Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context) => about()
                         )
                     );
                   },
                     padding: EdgeInsets.fromLTRB(250, 20, 5, 2),
                     child: Text('About',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 20
                     ),
                   ),
                   ),

                 ],
               ),


             ),


             SizedBox(height: 8,),
             Center(
               child: Container(
                   height: 50,
                   width: MediaQuery.of(context).size.width - 60,
                   padding: EdgeInsets.only(left: 10),
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(50)),
                       color: Colors.white..withOpacity(0.5),
                       border: Border.all(color:Color(0xFFFF0033),width: 1.5 ),
                       boxShadow: [
                         BoxShadow(
                             color: Colors.grey,
                             offset: Offset(1, 1),
                             blurRadius: 3)
                       ]),
                   child: TextFormField(
                     controller: _controller,
                     textInputAction: TextInputAction.done,
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(50)),
                         borderSide: BorderSide.none,
                       ),
                       hintText: ' Search',
                       suffixIcon: GestureDetector(
                         onTap: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(
                                 builder: (context) => AlgoExist(
                                     num: A.searchResult(_controller.text))),
                           );
                         },
                         child: Icon(
                           Icons.search,
                           color: Color(0xFF24A19C).withOpacity(0.8),
                         ),
                       ),
                       hintStyle: new TextStyle(
                           color: Color(0xFF24A19C).withOpacity(0.7),
                           fontSize: 20),
                     ),
                     onFieldSubmitted: (term) {
                       find(_controller.text);
                     },
                   )),
             ),
             SizedBox(height: 8,),
             heading('Common Asqar'),
             customTile("Morning Asqar", 14),

            //s
             heading('Common Duas'),
             customTile("Dua when in debt", 0),
             customTile("Dua for laylatu qadri", 1),
             customTile("Dua before entering toilet", 2),
             customTile("Dua when coming from toilet", 3),
             customTile("Dua before starting a Meal", 4),
             customTile("Dua after finishing a Meal", 5),
             customTile("Dua for Sustenance", 6),
             customTile("Dua during Windstorm", 7),
             customTile("Dua before sleeping", 12),


            //s
             heading('Learning'),

             customTile("How to perform Wudoo", 8),
             customTile("how to perform sal. janazah", 9),
             customTile("Jummuah sunnah", 10),

            //s

           ],
          ),
        )
      ),
    );
  }
}


