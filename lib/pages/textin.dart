import 'package:flutter/material.dart';
import 'package:project_1/test.dart';

class Textin extends StatelessWidget{
  var QuestionText = TextEditingController();
  var AnswerText = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Input New Flashcard'),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: QuestionText,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),

                    borderSide: BorderSide(
                      color: Colors.orange,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.orange,
                        width: 2,
                      )
                  ),
                  hintText: 'QUESTION', hintStyle: TextStyle(color: Colors.black),

                ),

              ),
              Container(height: 11,),
              TextField(
                controller: AnswerText,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.orange,
                          width: 2,
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.orange,
                          width: 2,
                        )
                    ),
                  hintText: 'ANSWER',hintStyle: TextStyle(color: Colors.black),
                ),

              ),
              ElevatedButton(onPressed: (){
                String uQues = QuestionText.text.toString();
                String uAns = AnswerText.text.toString();
                List<Flashcard>newl = [Flashcard(question: uQues, answer: uAns)];
                 quesAnsList = newl + quesAnsList ;
                 print('done');
              }, child: Text('SUBMIT'))
            ],
          ),
        ),
      ),

    );
  }
}