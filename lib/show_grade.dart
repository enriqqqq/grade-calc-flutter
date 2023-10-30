import 'package:flutter/material.dart';

class ShowGrade extends StatelessWidget {
  final double grade;
  const ShowGrade({required this.grade, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Grade Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nilai akhir anda adalah $grade'),
            Text(
              grade >= 90
                  ? 'A'
                  : grade > 85 && grade < 90
                      ? 'A-'
                      : grade > 80 && grade < 85
                          ? 'B+'
                          : grade > 75 && grade < 80
                              ? 'B'
                              : grade > 70 && grade < 75
                                  ? 'B-'
                                  : grade > 65 && grade < 70
                                      ? 'C'
                                      : grade > 60 && grade < 65
                                          ? 'D'
                                          : 'E',
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ],
        ),
      ),
    );
  }
}
