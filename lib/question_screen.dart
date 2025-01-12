import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key,required this.onSelectAnswer});

  final void Function(String Answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
    
  }

}

class _QuestionScreenState extends State<QuestionScreen>{

var currentQuestionIndex=0;

void answerquestion(String selectedAnswers){
  widget.onSelectAnswer(selectedAnswers);
  // currentQuestionIndex=currentQuestionIndex+1;
  // currentQuestionIndex+=1;
  setState((){
     currentQuestionIndex++;

  });
 
}

  @override
  Widget build(context) {
    
    final currentQuestion=question[currentQuestionIndex];

    return  SizedBox(
      width:double.infinity,
      child: Container(
        margin:const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.stretch,
          children: [
          Text(currentQuestion.text,
          style:GoogleFonts.lato(
            color:const Color.fromARGB(255, 202, 172, 232),
            fontSize:24,
            fontWeight:FontWeight.bold,
          ),
          textAlign: TextAlign.center,
          ),
          const SizedBox(height:30),
          ...currentQuestion.getShuffledAnswer().map((answer){
            return AnswerButton(answerText:answer,
            onTap:() {
              answerquestion(answer);
            });
          }),
        
        
        
        ],

        ),
      ),
    );
  }

}