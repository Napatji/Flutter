class QuizModel {
  const QuizModel(this.text, this.answer);

  final String text;
  final List<String> answer;

  List<String> getShuffleAnswer() {
    final shuffleAnswer = List.of(answer);
    shuffleAnswer.shuffle();
    return shuffleAnswer;
  }
}
