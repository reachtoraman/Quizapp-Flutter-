import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:quiza_app_flutter/Widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool option1 = false;
  bool option2 = false;
  bool option3 = false;
  bool option4 = false;
  var questionIndex = 0;

  List<String> questions = [
    'what is your Favroite Color',
    'what do you want to be ?',
    'which one is your favroite car',
    'your favoite Movie'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF181F26),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Widgets.text(
              questions[questionIndex],
              24,
              FontWeight.normal,
              Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      option1 = true;
                      option2 = false;
                      option3 = false;
                      option4 = false;
                      
                      
                   
                      print(questionIndex);
                    });
                  },
                  child: Widgets.customButton(
                      30,
                      option1 ? Colors.green : Color(0XFF5F6369),
                      'blue',
                      TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      context),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      option1 = false;
                      option2 = true;
                      option3 = false;
                      option4 = false;
                    });
                  },
                  child: Widgets.customButton(
                      30,
                      option2 ? Colors.green : Color(0XFF5F6369),
                      'blue',
                      TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      context),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      option1 = false;
                      option2 = false;
                      option3 = true;
                      option4 = false;
                    });
                  },
                  child: Widgets.customButton(
                      30,
                      option3 ? Colors.green : Color(0XFF5F6369),
                      'blue',
                      TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      context),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      option1 = false;
                      option2 = false;
                      option3 = false;
                      option4 = true;
                    });
                  },
                  child: Widgets.customButton(
                      30,
                      option4 ? Colors.green : Color(0XFF5F6369),
                      'blue',
                      TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      context),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
