import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_1/test.dart';
import 'dart:async';
import 'dart:convert';


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
                final Question = QuestionText.text;
                final Answer = AnswerText.text;

                CreateCard(Question: Question, Answer: Answer);
                 print('done');
              }, child: Text('SUBMIT'))
            ],
          ),
        ),
      ),

    );
  }
  Future CreateCard({required String Question, required String Answer}) async{
    final docCard = FirebaseFirestore.instance.collection('cards').doc();

    final cards = Cardtext(
      id: docCard.id,
      Question: Question,
      Answer: Answer,
    );
    final json = cards.toJson();

    await docCard.set(json);
  }
}

class Cardtext {
  String id;
  final String Question;
  final String Answer;

  Cardtext({
    this.id = '',
    required this.Question,
    required this.Answer,
});

  Map<String, dynamic> toJson() => {
    'id': id,
    'Question' : Question,
    'Answer' : Answer,
  };

}