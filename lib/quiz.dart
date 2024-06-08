import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/startscreen.dart';
import 'package:quiz_app/result_screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }

}

class _QuizState extends State<Quiz>{// we can not only keep class as private but also the variable by using 
// underscore before the variable and can only be accessed in the particular file only. 
  List<String> selectedAnswers=[];
  var activeScreen='Start-screen';
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen=StartScreen(switchScreen);
  //   super.initState();
  // }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length==question.length){
      setState((){

        // selectedAnswers=[];
        activeScreen='results-screen';
      });
    }

  }

  void switchScreen(){
    setState((){
      activeScreen='Question-screen';
      // activeScreen=const QuestionScreen();
    });
  }

  void restartQuiz(){
    setState((){
      selectedAnswers=[];
      activeScreen='Question-screen';
    });
  }
  @override 
  Widget build(context){

    Widget  screenWidget=StartScreen(switchScreen);

    if(activeScreen=='Question-screen'){
          screenWidget=QuestionScreen(onSelectAnswer:chooseAnswer,);
    }
    if (activeScreen=='results-screen'){
      screenWidget= ResultScreen(chosenAnswer: selectedAnswers,
      onRestart: restartQuiz,);
    }

    // final screenWidget=activeScreen=='Start-screen'?
    //     StartScreen(switchScreen)
    //     :const QuestionScreen();


    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Scaffold(
    
      body:Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(
          colors:[Colors.deepPurple,
          Colors.indigo],
          begin: Alignment.topLeft,
          end:Alignment.bottomRight,
          ),
        ),
        
        child:screenWidget,
      ),
    ),

  );
  }
}