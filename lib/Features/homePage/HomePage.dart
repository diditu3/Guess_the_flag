import 'package:flags/Features/flagQuiz/FlagsQuiz.dart';
import 'package:flags/Features/flagsName/FlagsNames.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar:AppBar(title: Text("Guess The Country Flag"),),
      body: Column(
        children: [
          Card(
            child: ListTile(splashColor: Colors.blue,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FlagsNames(),));
              },
              title: Text("Flags Names"),
              subtitle: Text("flag name"),
              leading:  Image.asset("assets/images/flags_names.jpg"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FlagsQuiz(),));
              },
              title: Text("Flags Quiz"),
              subtitle: Text("flag quiz"),
              leading:  Image.asset("assets/images/flags_quiz.jpg"),
              trailing: Icon(Icons.arrow_forward),
            ),
          )
        ],
      ),

    ));
  }
}
