import 'package:flutter/material.dart';
import 'package:project_1/practicecards.dart';
import 'package:project_1/test.dart';

class Flashcards extends StatelessWidget {
  final int indexno;
  const Flashcards({Key? key, required this.indexno}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 2),
        child: Row(
          children: [
            SizedBox(width: 180,
              child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                   const SizedBox(height: 10),
                     Text(quesAnsList[indexno].question, style: TextStyle(color: Colors.white),),
                    const SizedBox(height: 10),
                        Text(quesAnsList[indexno].answer, style: TextStyle(color: Colors.white),),
                    const SizedBox(height: 10),
                    Align(alignment:Alignment.bottomRight,
                      child:TextButton(onPressed: ( ){}, child: Icon(Icons.delete))
                    )
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}