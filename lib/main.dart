// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:dicoding_flutter/FlutterUI/Calculator/Widget/wg_CalculatorButton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String screenText = '0';

  void pressNumber(int number) {
    setState(() {
      if (screenText == '0') {
        screenText = '$number';
      } else {
        screenText = '$screenText$number';
      }
    });
  }

  void pressExpression(String exp) {
    setState(() {
      if (screenText.isNotEmpty) {
        screenText = '$screenText$exp';
      }
    });
  }

  void pressResult() {
    Parser p = Parser();
    ContextModel cm = ContextModel();
    Expression exp = p.parse(screenText);

    setState(() {
      screenText = exp.evaluate(EvaluationType.REAL, cm).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Calculator',
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).highlightColor,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  screenText,
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: Theme.of(context).primaryColorDark,
                      ),
                ),
              ),
            ),
          ),
          GridView.count(
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            crossAxisCount: 4,
            children: <Widget>[
              WgCalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: 'C',
                onTap: () {
                  setState(() {
                    screenText = '0';
                  });
                },
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '+/-',
                onTap: () {},
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '%',
                onTap: () {},
              ),
              WgCalculatorButton.Icon(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                icon: Icons.backspace,
                onTap: () {
                  setState(() {
                    if (screenText == '0' ||
                        screenText == '' ||
                        screenText.length == 1) {
                      screenText = '0';
                    } else {
                      screenText =
                          screenText.substring(0, screenText.length - 1);
                    }
                  });
                },
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).highlightColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '7',
                onTap: () {
                  pressNumber(7);
                },
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).highlightColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '8',
                onTap: () {
                  pressNumber(8);
                },
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).highlightColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '9',
                onTap: () {
                  pressNumber(9);
                },
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '/',
                onTap: () {
                  pressExpression('/');
                },
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).highlightColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '4',
                onTap: () {
                  pressNumber(4);
                },
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).highlightColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '5',
                onTap: () {
                  pressNumber(5);
                },
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).highlightColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '6',
                onTap: () {
                  pressNumber(6);
                },
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: 'X',
                onTap: () {
                  pressExpression('*');
                },
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).highlightColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '1',
                onTap: () {
                  pressNumber(1);
                },
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).highlightColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '2',
                onTap: () {
                  pressNumber(2);
                },
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).highlightColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '3',
                onTap: () {
                  pressNumber(3);
                },
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '-',
                onTap: () {
                  pressExpression('-');
                },
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).highlightColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '0',
                onTap: () {
                  pressNumber(0);
                },
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).highlightColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '.',
                onTap: () {
                  pressExpression('.');
                },
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '=',
                onTap: () {
                  pressResult();
                },
              ),
              WgCalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '+',
                onTap: () {
                  pressExpression('+');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
