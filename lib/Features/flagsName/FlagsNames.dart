import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlagsNames extends StatefulWidget {
  const FlagsNames({super.key});

  @override
  State<FlagsNames> createState() => _FlagsNamesState();
}

class _FlagsNamesState extends State<FlagsNames> {
  int index = 0;

  List<String> flagsImagesList = [
    "argentina",
    "brazil",
    "china",
    "france",
    "germany",
    "iraq",
    "japan",
    "lebanon",
    "qatar",
    "syria",
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("Flags Names"),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
            Image.asset("assets/images/${flagsImagesList[index]}.png",),
            SizedBox(height: 20,),
            Text(flagsImagesList[index].toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            SizedBox(height: 30,),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  index--;
                  if (index < 0){
                    index = flagsImagesList.length -1;
                  }
                  setState(() {

                  });
                }, child: Text("Back")),
                ElevatedButton(onPressed: (){
                  index++;
                  if (index >= flagsImagesList.length){
                    index = 0;
                  }
                  setState(() {

                  });
                }, child: Text("Next")),

              ],
            ),
          ],),
        ),
      ),

    ));
  }
}
