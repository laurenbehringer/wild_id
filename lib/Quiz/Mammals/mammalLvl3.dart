import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/Quiz/Quiz.dart';
import '../../QuizView.dart';


class mammallvl3 extends StatefulWidget {
  @override
  _mammallvl3State createState() => _mammallvl3State();
  final int bestScore;
  mammallvl3({Key key, @required this.bestScore}) : super(key: key);
}

class _mammallvl3State extends State<mammallvl3> {
  Color mainColor = Color(0xff2e344c);
  Color tealcol = Color(0xff146986);
  var score = 0;
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    final Questions = [
      ///question 1
      Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: QuizView(
          image: Container(
            width: 200,
            height: 150,
            child: Image.asset(
              "assets/Mammals/tapir2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          showCorrect: true,
          tagBackgroundColor: mainColor,
          tagColor: Colors.white,
          questionTag: "",
          answerColor: Colors.white,
          answerBackgroundColor: tealcol,
          questionColor: Colors.white,
          backgroundColor: Colors.deepOrange,
          width: 400,
          height: 700,
          question: "How heavy is the average calf of a Malayan Tapir?",
          rightAnswer: "6.8 kg",
          wrongAnswers: [
            "3 Kg",
            "0.5 - 1 Kg",
            "5 Kg"
          ],
          onRightAnswer: () {
            score += 20;
          },
          onWrongAnswer: (){},
        ),
      ),


      ///question 2
      Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: QuizView(
          image: Container(
            width: 200,
            height: 150,
            child: Image.asset(
              "assets/Mammals/baweandeer2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          showCorrect: true,
          tagBackgroundColor: mainColor,
          tagColor: Colors.white,
          questionTag: "",
          answerColor: Colors.white,
          answerBackgroundColor: tealcol,
          questionColor: Colors.white,
          backgroundColor: Colors.deepOrange,
          width: 400,
          height: 700,
          question: "What is the typical height for Bawean Deers?",
          rightAnswer: " 60 – 70 cm",
          wrongAnswers: [
            "70 - 90 cm",
            "100 - 150 cm",
            "40 - 50 cm"
          ],
          onRightAnswer: () {
            score += 20;
          },
          onWrongAnswer: (){},
        ),
      ),


      ///question 3
      Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: QuizView(
          image: Container(
            width: 200,
            height: 150,
            child: Image.asset(
              "assets/Mammals/bearcuscus2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          showCorrect: true,
          tagBackgroundColor: mainColor,
          tagColor: Colors.white,
          questionTag: "",
          answerColor: Colors.white,
          answerBackgroundColor: tealcol,
          questionColor: Colors.white,
          backgroundColor: Colors.deepOrange,
          width: 400,
          height: 700,
          question: "Where is the Bear Cuscus native to?",
          rightAnswer: "Sulawesi",
          wrongAnswers: [
            "Papua",
            "Sumatra",
            "Bali"
          ],
          onRightAnswer: () {
            score += 20;
          },
          onWrongAnswer: (){},
        ),
      ),


      ///question 4
      Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: QuizView(
          image: Container(
            width: 200,
            height: 150,
            child: Image.asset(
              "assets/Mammals/sundapangolin2.png",
              fit: BoxFit.cover,
            ),
          ),
          showCorrect: true,
          tagBackgroundColor: mainColor,
          tagColor: Colors.white,
          questionTag: "",
          answerColor: Colors.white,
          answerBackgroundColor: tealcol,
          questionColor: Colors.white,
          backgroundColor: Colors.deepOrange,
          width: 400,
          height: 700,
          question: "On Average how long are the tail of a Sunda Pangolin?",
          rightAnswer: "35 – 56 cm",
          wrongAnswers: [
            "3.5 – 6 cm",
            "6.33 - 9.7 cm",
            "10 - 15 cm"
          ],
          onRightAnswer: () {
            score += 20;
          },
          onWrongAnswer: (){},
        ),
      ),


      ///question 5
      Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: QuizView(
          image: Container(
            width: 200,
            height: 150,
            child: Image.asset(
              "assets/Mammals/baycat2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          showCorrect: true,
          tagBackgroundColor: mainColor,
          tagColor: Colors.white,
          questionTag: "",
          answerColor: Colors.white,
          answerBackgroundColor: tealcol,
          questionColor: Colors.white,
          backgroundColor: Colors.deepOrange,
          width: 400,
          height: 700,
          question: "How many Mature individuals of bay cats are there estimated in the wild?",
          rightAnswer: "2500",
          wrongAnswers: [
            "1000",
            "582",
            "2033"
          ],
          onRightAnswer: () {
            score += 20;
          },
          onWrongAnswer: (){},
        ),
      ),
    ];
    Questions.shuffle();

    return Scaffold(
      backgroundColor: quizbg,
      appBar: AppBar(
        title: Text("Mammals Level 3 Quiz",
          style:(
              GoogleFonts.sora(
                  textStyle: TextStyle(
                    color: Colors.white,
                  )
              )
          ),),
        elevation: 0,
        centerTitle: true,
        backgroundColor: quizbg,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                ]..addAll(Questions),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 300,
                          color: mainColor,
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 30,),
                                Text('Your Score',
                                    style: TextStyle(color: Colors.white, fontSize: 30)
                                ),
                                SizedBox(height: 50,),
                                Text("$score",
                                    style: TextStyle(color: Colors.white, fontSize: 50)
                                ),
                                Spacer(),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 65,
                                  child: ElevatedButton(
                                      child: const Text('Finish'),
                                      onPressed: () {
                                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Quiz()),
                                            ModalRoute.withName("/")
                                        );
                                      }
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                    if (score > widget.bestScore){
                      updateUser();
                    }
                  },
                  child: Text("Finish", style: GoogleFonts.sora(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white,
                      )
                  ),)),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> updateUser() {
    User user = _auth.currentUser;
    return users
        .doc(user.uid)
        .update({'mammalslvl3': score})
        .then((value) => print("Score Updated"))
        .catchError((error) => print("Failed to update Score: $error"));
  }

}