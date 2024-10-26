import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key, required this.chosenAnswers,
  });

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index':i,
        'question':questions[i].text,
        'correct_answer':questions[i].answers[0],
        'user_answer':chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("You answered X out of Y questions correctly!"),
                const SizedBox(
                  height: 30,
                ),
                QuestionsSummary(summaryData: getSummaryData(),),
                const SizedBox(
                  height: 30,
                ),
                TextButton(onPressed: () {}, child: const Text('Restart Quiz!'))
              ],
            )));
  }
}

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({
    super.key, required this.summaryData,
  });

    final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (e) {
          return Row(children: [
            Text(((e['question_index'] as int)+ 1).toString()),
            Column(
              children: [
                Text(e['question'] as String),
                const SizedBox(height: 5,),
                Text(e['user_answer'] as String),
                Text(e['correct_answer'] as String),
              ],
            )
          ],);
        },
      ).toList(),
    );
  }
}
