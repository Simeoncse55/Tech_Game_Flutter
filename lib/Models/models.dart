
class QuizModel {
  final String qNo;
  final String hint;
  final String question;
  final String answer;

  QuizModel({
    required this.qNo,
    required this.hint,
    required this.question,
    required this.answer,
  });


}
List<QuizModel> ans =[

  QuizModel(qNo: 'Question 1', hint:'', question: 'Who is Father of C Programming ?', answer: ''),
  QuizModel(qNo: 'Question 2', hint: '', question: 'Who is CEO of Google ?', answer: ''),
  QuizModel(qNo: 'Question 3', hint: '', question: 'Who is CEO of  Facebook ?', answer: '')

];

