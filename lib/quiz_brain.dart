import 'question.dart';

class QuizBrain{

  int _questionNum = 0;

List<Question> _questionBank = [
  Question('Q. Some cats are actually allergic to humans', true),
  Question('Q. You can lead a cow down stairs but not up stairs.', false),
  Question('Q. Approximately one quarter of human bones are in the feet.', true),
  Question('Q. A slug\'s blood is green.', true),
  Question('Q. Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
  Question('Q. It is illegal to pee in the Ocean in Portugal.', true),
  Question(
      'Q. No piece of square dry paper can be folded in half more than 7 times.',
      false),
  Question(
      'Q. In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
      true),
  Question(
      'Q. The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
      false),
  Question(
      'Q. The total surface area of two human lungs is approximately 70 square metres.',
      true),
  Question('Q. Google was originally called \"Backrub\".', true),
  Question(
      'Q. Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
      true),
  Question(
      'Q. In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
      true),
];

void nextQuestion(){
  if(_questionNum < _questionBank.length - 1){
    _questionNum++;
  }
}

String getQuestionText(){
  return _questionBank[_questionNum].questionText;
}

bool getCorrectAnswer(){
  return _questionBank[_questionNum].questionAnswer;
}

  bool isFinished() {
    if (_questionNum >= _questionBank.length - 1) {
//      TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }
//TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNum = 0;
  }

}