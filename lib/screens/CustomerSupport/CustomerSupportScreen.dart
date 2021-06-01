import 'package:flutter/material.dart';
import 'package:gudri/models/QuestionAnswerModel.dart';
import 'package:gudri/screens/CustomerSupport/Widgets/LocalWidgets.dart';

final List<QuestionAnswerModel> questionAnswers = [
  QuestionAnswerModel(answer: "The Answer", question: "The Question"),
  QuestionAnswerModel(answer: "The Answer", question: "The Question"),
  QuestionAnswerModel(answer: "The Answer", question: "The Question"),
  QuestionAnswerModel(answer: "The Answer", question: "The Question"),
];

class CustomerSupport extends StatefulWidget {
  @override
  _CustomerSupportState createState() => _CustomerSupportState();
}

class _CustomerSupportState extends State<CustomerSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1C2124),
          title: Text(
            "Customer Support",
            style: TextStyle(fontFamily: "Cabin"),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomerSupportTitle(
                  title: "Payment related queries",
                ),
                QuestionAnswerSection(
                  theQuestionsAnswers: questionAnswers,
                ),
                CustomerSupportTitle(
                  title: "Delivery related queries",
                ),
                QuestionAnswerSection(
                  theQuestionsAnswers: questionAnswers,
                ),
                CustomerSupportTitle(
                  title: "General Related queries",
                ),
                QuestionAnswerSection(
                  theQuestionsAnswers: questionAnswers,
                ),
              ],
            ),
          ),
        ));
  }
}
