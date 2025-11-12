import 'package:flutter/material.dart';

import '../models/exam.dart';
import 'exam_card.dart';

class CardList extends StatefulWidget {
  final List<Exam> exam;

  const CardList({super.key, required this.exam});

  @override
  State<StatefulWidget> createState() => _CardListState();
}

class _CardListState extends State<CardList>{

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: widget.exam.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: ExamCard(exam: widget.exam[index]),
        );
      },
    );
  }
}