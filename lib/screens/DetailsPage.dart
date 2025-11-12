
import 'package:flutter/material.dart';

import '../models/exam.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {

    final exam = ModalRoute.of(context)!.settings.arguments as Exam;
    final difference = exam.dateTime.difference(DateTime.now());

    String desc;
    if(difference.isNegative){
      desc = "Испитот е завршен";
    }
    else{
      final days = difference.inDays;
      final hours = difference.inHours.remainder(24);
      desc = "Преостанато време до испит: \n${days} дена, ${hours} часа";
    }

    return Scaffold(
        appBar:
        AppBar(
          title: Text("Детали за испитот"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Предмет: ${exam.subjectName}",
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                "Датум: ${exam.dateTime.day}/${exam.dateTime.month}/${exam.dateTime.year}",
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                "Време: ${exam.dateTime.hour}:${exam.dateTime.minute.toString()}",
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                "Простории: ${exam.examRoom.join(', ')}",
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Text(
                desc,
                style: const TextStyle(fontSize: 22),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        )
    );
  }
}
