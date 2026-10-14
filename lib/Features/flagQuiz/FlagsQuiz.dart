import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FlagsModel.dart';

class FlagsQuiz extends StatefulWidget {
  const FlagsQuiz({super.key});

  @override
  State<FlagsQuiz> createState() => _FlagsQuizState();
}

class _FlagsQuizState extends State<FlagsQuiz> {
  List<FlagsModel> flagsList = [
    FlagsModel(
        image: "argentina",
        answer1: "argentina",
        answer2: "brazil",
        answer3: "germany"),
    FlagsModel(
        image: "brazil",
        answer1: "france",
        answer2: "brazil",
        answer3: "lebanon"),
    FlagsModel(
        image: "china",
        answer1: "germany",
        answer2: "brazil",
        answer3: "china"),
    FlagsModel(
        image: "france", answer1: "japan", answer2: "syria", answer3: "france"),
    FlagsModel(
        image: "germany",
        answer1: "germany",
        answer2: "argentina",
        answer3: "japan"),
    FlagsModel(
        image: "iraq", answer1: "lebanon", answer2: "iraq", answer3: "syria"),
    FlagsModel(
        image: "japan",
        answer1: "lebanon",
        answer2: "france",
        answer3: "japan"),
    FlagsModel(
        image: "lebanon",
        answer1: "lebanon",
        answer2: "syria",
        answer3: "japan"),
    FlagsModel(
        image: "syria", answer1: "lebanon", answer2: "syria", answer3: "qatar"),
    FlagsModel(
        image: "qatar", answer1: "lebanon", answer2: "qatar", answer3: "syria"),
  ];

  int index = 0;
  int correctAnswer = 0;
  int wrongAnswer = 0;
  String status = "";

  void RightAnswers(){
    correctAnswer++;
    nextQuestion();
  }
  void IncorrectAnswers(){
    wrongAnswer++;
    nextQuestion();
  }

  void nextQuestion(){
    if (index +1 < flagsList.length){
      index++;
    } else {
      if (wrongAnswer == correctAnswer){
        status = "NOT BAD";
      } else if (wrongAnswer > correctAnswer){
        status = "YOU LOSE ?!";
      } else if (wrongAnswer < correctAnswer){
        status = "YOU WIN";
      }


    }
    setState(() {

    });

  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("Flags Quiz"),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (status.isEmpty)
              Column(
                 children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Row(
                    children: [
                      Text("$wrongAnswer",style: TextStyle(fontSize: 25),),
                      Icon(Icons.close, color: Colors.red,),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.green,),
                      Text("$correctAnswer", style: TextStyle(fontSize: 25),),
                    ],
                  ),

                ],),
                SizedBox(height: 20,),

                Image.asset("assets/images/${flagsList[index].image}.png",),
                SizedBox(height: 70,),
                ElevatedButton(onPressed: (){
                  if(flagsList[index].answer1 == flagsList[index].image) {
                    RightAnswers();
                  }
                  else {
                    IncorrectAnswers();
                  }
                }, child: Text(flagsList[index].answer1.toUpperCase())),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  if(flagsList[index].answer2 == flagsList[index].image) {
                    RightAnswers();
                  }
                  else {
                    IncorrectAnswers();
                  }
                }, child: Text(flagsList[index].answer2.toUpperCase())),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  if(flagsList[index].answer3 == flagsList[index].image) {
                    RightAnswers();
                  }
                  else {
                    IncorrectAnswers();
                  }

                }, child: Text(flagsList[index].answer3.toUpperCase())),
                SizedBox(height: 20,),


              ],),
              if (status.isNotEmpty)
              Column(children: [
                Text(status,style: TextStyle(fontSize: 35),),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                   index = 0;
                   correctAnswer = 0;
                   wrongAnswer = 0;
                   status = "";
                   setState(() {

                   });

                }, child: Text("Try Again")),

              ],)
            ],
          ),
        ),
      ),
    ));
  }
}
