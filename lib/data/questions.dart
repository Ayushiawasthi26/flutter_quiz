import 'package:quiz_app/models/quiz_question.dart';

const question=[
  QuizQuestion('What are the main building block of Flutter UIs?',[
    'Widget',
    'Components',
    'Blocks',
    'Functions',

  ],
  ),

  QuizQuestion('How are Flutter UIs built?',[

    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using Xcode for iOS and Android Studio for android',

  ],
  ),

  QuizQuestion('What\'s the purpose of Stateful Widget',[
    'Update UI as data changes',
    'Update data as UI changes',
    'Ignore data changes',
    'Render data as UI changes',

  ],
  ),

  QuizQuestion('Which Widget should you try to use more often:StatefulWidget or StatelessWidget?',[
     'StatefulWidget',
     'StatelessWidget',
     'Both are equally good',
     'None of the above',
  ],),


  QuizQuestion('What happens if you change data in StatefulWidget?',[
    'The UI is not updated',
    'The UI is updated',
    'The closest StatefulWidget is updated',
    'Any nested StatefulWidget are updated',
  ],),

  QuizQuestion('How should you update data inside of StatefulWidgets?',[
    'By calling setState()',
    'By calling updateData()',
    'By calling updateUI()',
    'By calling updateState()',

  ],),

];