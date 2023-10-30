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
              grade >= 90 && grade <= 100 // 90 - 100
                  ? 'A'
                  : grade >= 85 && grade < 90 // 85 - 89
                      ? 'A-'
                      : grade >= 80 && grade < 85 // 80 - 84
                          ? 'B+'
                          : grade >= 75 && grade < 80 // 75 - 79
                              ? 'B'
                              : grade >= 70 && grade < 75 // 70 - 74
                                  ? 'B-'
                                  : grade >= 65 && grade < 70 // 65 - 69
                                      ? 'C'
                                      : grade >= 60 && grade < 65 // 60 - 64
                                          ? 'D'
                                          : 'E',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}
