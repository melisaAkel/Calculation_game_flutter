import 'dart:math';

import 'package:calculater/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageSatate();
}

class _HomePageSatate extends State<HomePage> {
  String userAnswer = '';
  int userLevel = 0;
  int howManyCorrect = 0;
  bool isTrue = false;
  int numberA = 1 + Random().nextInt(11 - 1);
  int numberB = 1 + Random().nextInt(10 - 1);
  int numberC = 1 + Random().nextInt(10 - 1);
  int numberD = 1 + Random().nextInt(10 - 1);
  String result = "";
  String operatorA = "+";
  String operatorB = '-';
  String operatorC = '/';
  void buttonTapped(String button, int level) {
    setState(() {
      if (button == '=') {
        checkResult(level);
        userAnswer = '';
      } else if (button == 'C') {
        //clear the input
        userAnswer = '';
      } else if (button == 'DEL') {
        if (userAnswer.isNotEmpty) {
          userAnswer = userAnswer.substring(0, userAnswer.length - 1);
        }
      } else if (userAnswer.length < 6) {
        userAnswer += button;
      }
    });
  }

  void calculate(int level) {
    if (level == 1) {
      if (operatorA == "+") {
        result = "${numberA + numberB}";
      } else if (operatorA == "-") {
        result = "${numberA - numberB}";
      } else if (operatorA == "*") {
        result = "${numberA * numberB}";
      } else if (operatorA == "/") {
        result = "${numberA / numberB}";
      }
    }
    if (level == 2) {
      if (operatorA == "+") {
        if (operatorB == "+") {
          result = "${numberA + numberB + numberC}";
        } else if (operatorB == "-") {
          result = "${numberA + numberB - numberC}";
        } else if (operatorB == "*") {
          result = "${numberA + numberB * numberC}";
        } else if (operatorB == "/") {
          result = "${numberA + numberB / numberC}";
        }
      } else if (operatorA == "-") {
        if (operatorB == "+") {
          result = "${numberA - numberB + numberC}";
        } else if (operatorB == "-") {
          result = "${numberA - numberB - numberC}";
        } else if (operatorB == "*") {
          result = "${numberA - numberB * numberC}";
        } else if (operatorB == "/") {
          result = "${numberA - numberB / numberC}";
        }
      } else if (operatorA == "*") {
        if (operatorB == "+") {
          result = "${numberA * numberB + numberC}";
        } else if (operatorB == "-") {
          result = "${numberA * numberB - numberC}";
        } else if (operatorB == "*") {
          result = "${numberA * numberB * numberC}";
        } else if (operatorB == "/") {
          result = "${numberA * numberB / numberC}";
        }
      } else if (operatorA == "/") {
        if (operatorB == "+") {
          result = "${numberA / numberB + numberC}";
        } else if (operatorB == "-") {
          result = "${numberA / numberB - numberC}";
        } else if (operatorB == "*") {
          result = "${numberA / numberB * numberC}";
        } else if (operatorB == "/") {
          result = "${numberA / numberB / numberC}";
        }
      }
    }
    if (level == 3) {
      if (operatorC == "+") {
        if (operatorA == "+") {
          if (operatorB == "+") {
            result = "${numberA + numberB + numberC + numberD}";
          } else if (operatorB == "-") {
            result = "${numberA + numberB - numberC + numberD}";
          } else if (operatorB == "*") {
            result = "${numberA + numberB * numberC + numberD}";
          } else if (operatorB == "/") {
            result = "${numberA + numberB / numberC + numberD}";
          }
        } else if (operatorA == "-") {
          if (operatorB == "+") {
            result = "${numberA - numberB + numberC + numberD}";
          } else if (operatorB == "-") {
            result = "${numberA - numberB - numberC + numberD}";
          } else if (operatorB == "*") {
            result = "${numberA - numberB * numberC + numberD}";
          } else if (operatorB == "/") {
            result = "${numberA - numberB / numberC + numberD}";
          }
        } else if (operatorA == "*") {
          if (operatorB == "+") {
            result = "${numberA * numberB + numberC + numberD}";
          } else if (operatorB == "-") {
            result = "${numberA * numberB - numberC + numberD}";
          } else if (operatorB == "*") {
            result = "${numberA * numberB * numberC + numberD}";
          } else if (operatorB == "/") {
            result = "${numberA * numberB / numberC + numberD}";
          }
        } else if (operatorA == "/") {
          if (operatorB == "+") {
            result = "${numberA / numberB + numberC + numberD}";
          } else if (operatorB == "-") {
            result = "${numberA / numberB - numberC + numberD}";
          } else if (operatorB == "*") {
            result = "${numberA / numberB * numberC + numberD}";
          } else if (operatorB == "/") {
            result = "${numberA / numberB / numberC + numberD}";
          }
        }
      } else if (operatorC == "-") {
        if (operatorA == "+") {
          if (operatorB == "+") {
            result = "${numberA + numberB + numberC - numberD}";
          } else if (operatorB == "-") {
            result = "${numberA + numberB - numberC - numberD}";
          } else if (operatorB == "*") {
            result = "${numberA + numberB * numberC - numberD}";
          } else if (operatorB == "/") {
            result = "${numberA + numberB / numberC - numberD}";
          }
        } else if (operatorA == "-") {
          if (operatorB == "+") {
            result = "${numberA - numberB + numberC - numberD}";
          } else if (operatorB == "-") {
            result = "${numberA - numberB - numberC - numberD}";
          } else if (operatorB == "*") {
            result = "${numberA - numberB * numberC - numberD}";
          } else if (operatorB == "/") {
            result = "${numberA - numberB / numberC - numberD}";
          }
        } else if (operatorA == "*") {
          if (operatorB == "+") {
            result = "${numberA * numberB + numberC - numberD}";
          } else if (operatorB == "-") {
            result = "${numberA * numberB - numberC - numberD}";
          } else if (operatorB == "*") {
            result = "${numberA * numberB * numberC - numberD}";
          } else if (operatorB == "/") {
            result = "${numberA * numberB / numberC - numberD}";
          }
        } else if (operatorA == "/") {
          if (operatorB == "+") {
            result = "${numberA / numberB + numberC - numberD}";
          } else if (operatorB == "-") {
            result = "${numberA / numberB - numberC - numberD}";
          } else if (operatorB == "*") {
            result = "${numberA / numberB * numberC - numberD}";
          } else if (operatorB == "/") {
            result = "${numberA / numberB / numberC - numberD}";
          }
        }
      } else if (operatorC == "*") {
        if (operatorA == "+") {
          if (operatorB == "+") {
            result = "${numberA + numberB + numberC * numberD}";
          } else if (operatorB == "-") {
            result = "${numberA + numberB - numberC * numberD}";
          } else if (operatorB == "*") {
            result = "${numberA + numberB * numberC * numberD}";
          } else if (operatorB == "/") {
            result = "${numberA + numberB / numberC * numberD}";
          }
        } else if (operatorA == "-") {
          if (operatorB == "+") {
            result = "${numberA - numberB + numberC * numberD}";
          } else if (operatorB == "-") {
            result = "${numberA - numberB - numberC * numberD}";
          } else if (operatorB == "*") {
            result = "${numberA - numberB * numberC * numberD}";
          } else if (operatorB == "/") {
            result = "${numberA - numberB / numberC * numberD}";
          }
        } else if (operatorA == "*") {
          if (operatorB == "+") {
            result = "${numberA * numberB + numberC * numberD}";
          } else if (operatorB == "-") {
            result = "${numberA * numberB - numberC * numberD}";
          } else if (operatorB == "*") {
            result = "${numberA * numberB * numberC * numberD}";
          } else if (operatorB == "/") {
            result = "${numberA * numberB / numberC * numberD}";
          }
        } else if (operatorA == "/") {
          if (operatorB == "+") {
            result = "${numberA / numberB + numberC * numberD}";
          } else if (operatorB == "-") {
            result = "${numberA / numberB - numberC * numberD}";
          } else if (operatorB == "*") {
            result = "${numberA / numberB * numberC * numberD}";
          } else if (operatorB == "/") {
            result = "${numberA / numberB / numberC * numberD}";
          }
        }
      } else if (operatorC == "/") {
        if (operatorA == "+") {
          if (operatorB == "+") {
            result = "${numberA + numberB + numberC / numberD}";
          } else if (operatorB == "-") {
            result = "${numberA + numberB - numberC / numberD}";
          } else if (operatorB == "*") {
            result = "${numberA + numberB * numberC / numberD}";
          } else if (operatorB == "/") {
            result = "${numberA + numberB / numberC / numberD}";
          }
        } else if (operatorA == "-") {
          if (operatorB == "+") {
            result = "${numberA - numberB + numberC / numberD}";
          } else if (operatorB == "-") {
            result = "${numberA - numberB - numberC / numberD}";
          } else if (operatorB == "*") {
            result = "${numberA - numberB * numberC / numberD}";
          } else if (operatorB == "/") {
            result = "${numberA - numberB / numberC / numberD}";
          }
        } else if (operatorA == "*") {
          if (operatorB == "+") {
            result = "${numberA * numberB + numberC / numberD}";
          } else if (operatorB == "-") {
            result = "${numberA * numberB - numberC / numberD}";
          } else if (operatorB == "*") {
            result = "${numberA * numberB * numberC / numberD}";
          } else if (operatorB == "/") {
            result = "${numberA * numberB / numberC / numberD}";
          }
        } else if (operatorA == "/") {
          if (operatorB == "+") {
            result = "${numberA / numberB + numberC / numberD}";
          } else if (operatorB == "-") {
            result = "${numberA / numberB - numberC / numberD}";
          } else if (operatorB == "*") {
            result = "${numberA / numberB * numberC / numberD}";
          } else if (operatorB == "/") {
            result = "${numberA / numberB / numberC / numberD}";
          }
        }
      }
    }
  }

//later
  bool checkResult(int level) {
    calculate(level);
    if (result == userAnswer) {
      howManyCorrect++;
      if (howManyCorrect % 5 == 0) {
        userLevel++;
      }
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: Colors.teal,
              content: Container(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Correct Answer!',
                        style: whiteTextStyle,
                      ),
                      GestureDetector(
                        onTap: closeThePop,
                        child: Container(
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              color: Colors.teal.shade200,
                              borderRadius: BorderRadius.circular(8)),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )),
            );
          });
      setState(() {
        generateRandomNumber(level);
        userAnswer == "";
      });
      return true;
    } else {
      return false;
    }
  }

  void closeThePop() {
    Navigator.of(context).pop();
  }

  void generateRandomNumber(int level) {
    int num = 1 + Random().nextInt(4 - 1);
    if (num == 1) {
      operatorA = "+";
    } else if (num == 2) {
      operatorA = "-";
    } else if (num == 3) {
      operatorA = "*";
    } else {
      operatorA = "/";
    }
    numberA = 1 + Random().nextInt(25 - 1);
    numberB = 1 + Random().nextInt(25 - 1);
    while (numberB == 0 && operatorA == '/') {
      numberB = 1 + Random().nextInt(25 - 1);
    }
    if (level >= 2) {
      num = 1 + Random().nextInt(4 - 1);
      if (num == 1) {
        operatorB = "+";
      } else if (num == 2) {
        operatorB = "-";
      } else if (num == 3) {
        operatorB = "*";
      } else {
        operatorB = "/";
      }
      numberC = 1 + Random().nextInt(100 - 1);
      while (numberC == 0 && operatorB == '/') {
        numberC = 1 + Random().nextInt(25 - 1);
      }
    }
    if (level >= 3) {
      num = 1 + Random().nextInt(4 - 1);
      if (num == 1) {
        operatorC = "+";
      } else if (num == 2) {
        operatorC = "-";
      } else if (num == 3) {
        operatorC = "*";
      } else {
        operatorC = "/";
      }
      numberD = 0 + Random().nextInt(100 - 0);
      while (numberD == 0 && operatorC == '/') {
        numberD = 1 + Random().nextInt(25 - 1);
      }
    }
    isTrue = false;
  }

  @override
  Widget build(BuildContext context) {
    String question = "$numberA $operatorA $numberB";
    if (userLevel == 0) {
      generateRandomNumber(1);
      userLevel++;
      question = "$numberA $operatorA $numberB = ";
    } else if (userLevel == 1) {
      question = "$numberA $operatorA $numberB = ";
    } else if (userLevel == 2) {
      question = "$numberA $operatorA $numberB $operatorB $numberC = ";
    } else {
      question =
          "$numberA $operatorA $numberB $operatorB $numberC $operatorC $numberD = ";
    }
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
            ),
          ],
          title: Text(
            'Math Game',
            style: whiteTextStyle,
          ),
          backgroundColor: Colors.teal,
        ),
        backgroundColor: Colors.teal.shade300,
        body: Column(
          children: [
            //level progress, players need 5 correct answer to level up

            Container(
                height: 60,
                color: Colors.teal.shade300,
                child: Text(
                  "Level : $userLevel",
                  style: whiteTextStyle,
                )),
            Expanded(
              child: Container(
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      question,
                      style: whiteTextStyle,
                    ),
                    Container(
                      //Answer box
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          userAnswer,
                          style: whiteTextStyle,
                        ),
                      ),
                    )
                  ],
                )),
                color: Colors.teal.shade300,
              ),
            ),
            Expanded(
                flex: 2,
                //it makes number pad bigger tha  the question
                child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: GridView.builder(
                        itemCount: numberPad.length,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () =>
                                    buttonTapped(numberPad[index], userLevel),
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.teal.shade400,
                                        borderRadius:
                                            BorderRadius.circular(4.0)),
                                    child: Center(
                                      child: Text(
                                        numberPad[index],
                                        style: whiteTextStyle,
                                      ),
                                    )),
                              ));
                        })))
            //question

            //number pad
          ],
        ));
  }
}
