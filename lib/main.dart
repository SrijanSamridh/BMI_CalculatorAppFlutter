import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0E22),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepOrange,
        ).copyWith(
          secondary: Colors.cyanAccent,
        ),
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      home: const InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

