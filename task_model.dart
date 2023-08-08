import 'char_model.dart';

class TaskModel {
  String question;
  String pathImage;
  String answer;
  bool isDone = false;
  bool isFull = false;
  List<CharModel> puzzles = [];
  List<String> arrayButtons = [];

  TaskModel(
      {required this.question,
        required this.pathImage,
        required this.answer,
        this.arrayButtons = const []});
  void setWordFindChar(List<CharModel> puzzles) {
    this.puzzles = puzzles;
  }

  void setIsDone() {
    isDone = true;
  }

  bool fieldCompleteCorrect() {
    bool complete =
        puzzles.where((puzzle) => puzzle.currentValue == null).isEmpty;
    if (!complete) {
    } else {
      isFull = false;
      return complete;
    }
    isFull = true;
    String answeredString =
    puzzles.map((puzzle) => puzzle.currentValue).join("");
    return answeredString == answer;
  }

  TaskModel clone() {
    return TaskModel(question: question, pathImage: pathImage, answer: answer);
  }
}