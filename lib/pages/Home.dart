import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_1/flashcard.dart';
import 'package:project_1/pages/practice.dart';
import 'package:project_1/test.dart';
import 'package:project_1/pages/textin.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title:
        const Center(
          child: Text('Flashcards',
            style:TextStyle(fontFamily: 'IndieFlower',
                fontSize: 50 ),
          ),
        ),
        bottom: PreferredSize(preferredSize: const Size.fromHeight(10), child: Container(
          color: Colors.blueGrey,
          height: 5,)
        ),
      ),
      backgroundColor: Colors.black,
      body:
      GridView.count(crossAxisCount: 2,
        children: [
          Flashcards(indexno: 0),
          Flashcards(indexno: 1),
          Flashcards(indexno: 2),
          Flashcards(indexno: 3),
          Flashcards(indexno: 4),


        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items:[
        BottomNavigationBarItem(label:'Cards', icon: Icon(Icons.add_card_outlined) ),
        BottomNavigationBarItem(label:'Practice', icon: Icon(Icons.pending))
      ],
        onTap: (index) {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Practice()));
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Textin()),
        );
      },
        child: Text('+', style: TextStyle(fontSize: 30)
        ),
      ),
    );
  }
}
