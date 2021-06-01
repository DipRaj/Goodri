import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gudri/models/QuestionAnswerModel.dart';

class CustomerSupportTitle extends StatelessWidget {
  final String title;
  CustomerSupportTitle({required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(color: Color(0xffEEEEEE)),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontFamily: "Cabin",
          ),
        ),
      ),
    );
  }
}

// for question answer Section 👇👇

class QuestionAnswerSection extends StatefulWidget {
  final List<QuestionAnswerModel> theQuestionsAnswers;
  QuestionAnswerSection({required this.theQuestionsAnswers});
  @override
  _QuestionAnswerSectionState createState() => _QuestionAnswerSectionState();
}

class _QuestionAnswerSectionState extends State<QuestionAnswerSection> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.theQuestionsAnswers.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return QuestionAnswer(
              answer: '${widget.theQuestionsAnswers[index].answer}',
              question: '${widget.theQuestionsAnswers[index].question}');
        });
  }
}

// for question answer 👇👇
class QuestionAnswer extends StatefulWidget {
  final String question;
  final String answer;
  QuestionAnswer({required this.answer, required this.question});
  @override
  _QuestionAnswerState createState() => _QuestionAnswerState();
}

class _QuestionAnswerState extends State<QuestionAnswer> {
  bool answerVisible = false;
  void showAnswer() {
    setState(() {
      answerVisible = !answerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              showAnswer();
            },
            child: ListTile(
              title:
                  Text(widget.question, style: TextStyle(fontFamily: "Cabin")),
              trailing: Icon(answerVisible
                  ? FontAwesomeIcons.chevronUp
                  : FontAwesomeIcons.chevronDown),
            ),
          ),
          Visibility(
              visible: answerVisible,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                  child: Text(
                    widget.answer,
                    style: TextStyle(fontFamily: "Cabin"),
                  ),
                ),
              )),
          Divider(
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
