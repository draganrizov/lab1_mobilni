import 'package:flutter/material.dart';
import 'package:raspored_chasevi/models/exam.dart';
import 'package:raspored_chasevi/widget/card_list.dart';
import 'package:raspored_chasevi/widget/exam_counter.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Exam> exam = [
    Exam(
      subjectName: "Структурно Програмирање",
      dateTime: DateTime(2025, 03, 2, 09, 30),
      examRoom: ["223", "АМФ МФ"],
    ),
    Exam(
      subjectName: "Објектно ориентирано програмирање",
      dateTime: DateTime(2025, 04, 2, 10, 30),
      examRoom: ["223", "АМФ МФ"],
    ),
    Exam(
      subjectName: "Избрани теми од математиката",
      dateTime: DateTime(2025, 05, 2, 11, 30),
      examRoom: ["223", "АМФ МФ"],
    ),
    Exam(
      subjectName: "Интернет програмирање на клиентска страна",
      dateTime: DateTime(2025, 06, 2, 12, 30),
      examRoom: ["223", "АМФ МФ"],
    ),
    Exam(
      subjectName: "Шаблони на кориснички интерфејс",
      dateTime: DateTime(2025, 07, 2, 13, 30),
      examRoom: ["223", "АМФ МФ"],
    ),
    Exam(
      subjectName: "Вовед во компјутерски науки",
      dateTime: DateTime(2025, 08, 2, 14, 30),
      examRoom: ["223", "АМФ МФ"],
    ),
    Exam(
      subjectName: "Професионални вештини",
      dateTime: DateTime(2025, 09, 2, 15, 30),
      examRoom: ["223", "АМФ МФ"],
    ),
    Exam(
      subjectName: "Бази на податоци",
      dateTime: DateTime(2025, 10, 12, 12, 30),
      examRoom: ["223", "АМФ МФ"],
    ),
    Exam(
      subjectName: "Вовед во наука за податоци",
      dateTime: DateTime(2025, 11, 2, 22, 30),
      examRoom: ["223"],
    ),
    Exam(
      subjectName: "Оперативни системи",
      dateTime: DateTime(2025, 12, 2, 18, 30),
      examRoom: ["223",],
    ),
    Exam(
      subjectName: "Компјутерска етика",
      dateTime: DateTime(2025, 13, 2, 20, 30),
      examRoom: ["117", "138"],
    ),
    Exam(
      subjectName: "Напредно програмирање",
      dateTime: DateTime(2025, 20, 2, 09, 30),
      examRoom: ["200v", "200ab"],
    ),
  ];

  @override
  Widget build(BuildContext context) {

    exam.sort((a,b) => a.dateTime.compareTo(b.dateTime));

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Row(
              children: [
                Image.network(
                  "https://www.finki.ukim.mk/Content/dataImages/downloads/logo-large-500x500_2.png",
                  height: 50,
                ),
                const SizedBox(width: 10),
                Text(
                    widget.title,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700

                    )
                ),
              ],
            )
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(20),
            child:  Column(
              children: [
                CardList(exam: exam),
                const SizedBox(height: 20),
                ExamCounter(counter: exam.length),
                const SizedBox(height: 100),
              ],
            ),
          ),
        )
    );
  }
}