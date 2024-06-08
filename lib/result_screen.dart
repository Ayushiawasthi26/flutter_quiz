import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary/question_summary.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key,required this.chosenAnswer,required this.onRestart,});
  final void Function() onRestart;
  final List<String>chosenAnswer;

  List<Map<String,Object>> getSummaryData(){//here we can also write get 
  // SummaryData to access the data from the list

    final List<Map<String,Object>> summary=[];

    for(var i=0;i<chosenAnswer.length;i++){
      summary.add({
        'question-index':i,
        'question':question[i].text,
        'correct-answer':question[i].answers[0],
        'user-answer':chosenAnswer[i],
      });

    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData=getSummaryData();
    final numTotal =question.length;
    // in the next step we can also write as final numCorrect=summaryData.where((data)=>
    // data['user-answer']==data['correct-answer']).length;
    final numCorrect=summaryData.where((data){
      return data['user-answer']==data['correct-answer'];
    }).length;
    return SizedBox(
      width:double.infinity,
      child: Container(
        margin:const EdgeInsets.all(40),
        child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
             Text('You answered $numCorrect out of $numTotal questions correctly!',
             style:GoogleFonts.lato(
              color:const Color.fromARGB(255, 137, 187, 228),
              fontSize:20,
              fontWeight:FontWeight.bold,
             )),
              // const SizedBox(height:30,),
              QuestionSummary(summaryData),
              const SizedBox(height: 30,),
              TextButton.icon(
                onPressed:onRestart,
                style:TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon:const Icon(Icons.refresh),
                label:const Text('Restart Quiz'),

              ),
              //  child: const Text('Restart quiz')),
      ],
    ),
      ),
    );
  }

}