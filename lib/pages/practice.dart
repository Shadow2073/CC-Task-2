import 'package:flutter/material.dart';
import 'package:project_1/pages/Home.dart';
import 'package:flip_card/flip_card.dart';
import 'package:project_1/test.dart';
import 'package:project_1/practicecards.dart';

class Practice extends StatefulWidget{
  const Practice({super.key});
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice>{
  int _currentIndexNumber = 0;
  double _initial = 1  ;
  int n = quesAnsList.length;

  @override
  Widget build(BuildContext context) {
    quesAnsList.shuffle();
    String value = (_initial).toStringAsFixed(0);
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            centerTitle: true,
            title: Text("Flashcards App", style: TextStyle(fontSize: 30)
            ),
            toolbarHeight: 80,
            backgroundColor: Colors.deepPurple,
            elevation: 5,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Question $value of $n Completed", style: TextStyle(color: Colors.white),),
                  SizedBox(height: 20),
                  SizedBox(height: 25),
                  SizedBox(
                      width: 300,
                      height: 300,
                      child: FlipCard(
                          direction: FlipDirection.VERTICAL,
                          front: ReusableCard(
                              text: quesAnsList[_currentIndexNumber].question),
                          back: ReusableCard(
                              text: quesAnsList[_currentIndexNumber].answer)
                      )
                  ),
                  Text("Tap card to see Answer",style: TextStyle(color: Colors.white),),
                  SizedBox(height: 20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ElevatedButton.icon(
                            onPressed: () {
                              showNextCard();
                              updateToNext();
                            },
                            icon: Icon(Icons.forward, size: 30, color: Colors.black,),
                            label: Text(""),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green[600],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                padding: EdgeInsets.only(
                                    right: 20, left: 25, top: 15, bottom: 15)
                            )
                        )
                      ]
                  )
                ]
            )
        ),
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: 1,
      items:[
        BottomNavigationBarItem(label:'Cards', icon: Icon(Icons.add_card_outlined) ),
        BottomNavigationBarItem(label:'Practice', icon: Icon(Icons.pending))
      ],
      onTap: (index) {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
      },
    ),
    );
  }

  void updateToNext() {
    setState(() {
      _initial = _initial + 1;
      if (_initial > n) {
        _initial = 1;
      }
    });
  }

  void showNextCard() {
    setState(() {
      _currentIndexNumber = (_currentIndexNumber + 1 < quesAnsList.length)
          ? _currentIndexNumber + 1
          : 0;
    });
  }

}
