
class QuizModel {

  final String hintTittle;
  final String hint;
  final String question;
  final String answer;

  QuizModel({
    required this.hintTittle,
    required this.hint,
    required this.question,
    required this.answer,
  });


}
List<QuizModel> ans =[

  QuizModel(

      hintTittle: 'Algorithm ?',
      hint:'A step-by-step set of instructions for solving a problem or performing a task.',
      question: 'Algorithm ?',
      answer: 'procedure'
  ),

  QuizModel(

      hintTittle: 'Encryption ?',
      hint: 'The process of converting information into a secure code to prevent unauthorized access.',
      question: 'Encryption ?', answer: 'security'
  ),
  QuizModel(

      hintTittle: 'Firewall ?',
      hint: 'A protective barrier that monitors and controls incoming and outgoing network traffic.',
      question: 'Firewall ?',
      answer: 'protection'
  ),
  QuizModel(hintTittle: ' API ?', hint: 'An intermediary that allows different software applications to communicate with each other.', question: ' API ?', answer: 'interface'),
  
  QuizModel(hintTittle: 'Cloud ?', hint: 'An internet-based service for storing and accessing data and applications.', question: 'Cloud ?', answer: 'storage'),

  QuizModel(hintTittle: 'Protocol ?', hint: 'Established rules governing communication between devices or systems.', question: 'Protocol ?', answer: 'rules')

];

