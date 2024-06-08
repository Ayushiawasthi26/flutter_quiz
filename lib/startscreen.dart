import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// class StartScreen extends StatelessWidget {
//   const StartScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Text("Start Screen");
//   }
// }
class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;
  // const StartScreen (void Function() startQuiz,{super.key});

  @override
  Widget build(context){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        
             Image.asset(
              'assets/images/quiz-logo.png',
            width:300,
            color:const Color.fromARGB(150, 255, 255, 255),
            
            ),
          
          // Opacity(
          //   opacity:0.5,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width:300
          //   ),
          // ),
          const SizedBox(height: 80),
          Text('Learn Flutter the fun way!',
          style:GoogleFonts.lato(
            color:const Color.fromARGB(255, 234, 196, 238),
            fontSize: 24,
          ),
          ),
          const SizedBox(height:30),
          
          OutlinedButton.icon(
            onPressed:startQuiz,
            // onPressed: () {
            //   startQuiz();
              
            // }, 
          style:OutlinedButton.styleFrom(
            foregroundColor: Colors.white,

          ),
          icon:const Icon(Icons.arrow_right_alt),
          label: Text('Start the quiz'),),
          
      ],
      // const Text('Start Screen'),
    ),);

  }
  
}