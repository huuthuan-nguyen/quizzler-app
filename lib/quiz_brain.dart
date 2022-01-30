import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBanks = [
    Question(
      q: "You can lead a cow down stairs but not up stairs.",
      a: false,
    ),
    Question(
      q: "Approximately one quarter of human bones are int the feet.",
      a: true,
    ),
    Question(
      q: "A slug's blood is green.",
      a: true,
    ),
  ];

  String getQuestionText() {
    return _questionBanks[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBanks[_questionNumber].questionAnswer;
  }

  bool nextQuestion() {
    if (_questionNumber < _questionBanks.length-1) {
      _questionNumber++;
      return true;
    }
    return false;
  }
}
