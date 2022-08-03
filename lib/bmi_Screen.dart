import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/bmi_result_Screen.dart';

class bmi_Screen extends StatefulWidget {
  const bmi_Screen({Key? key}) : super(key: key);

  @override
  State<bmi_Screen> createState() => _bmi_ScreenState();
}

class _bmi_ScreenState extends State<bmi_Screen> {

  bool isMale = true ;
  double hight = 120.0 ;
  int weight = 40 ;
  int age = 20 ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap:(){
                        setState((){
                          isMale = true ;

                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Image(image:
                             AssetImage('assets/images/male.png'),
                             height: 90.0,
                             width: 90.0,
                             ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text('MALE',
                            style: TextStyle(
                              fontSize: 25.0 ,
                              fontWeight: FontWeight.bold ,
                            ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: isMale?Colors.blue : Colors.grey[400] ,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState((){
                          isMale = false ;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image:
                            AssetImage('assets/images/female.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text('FEMALE',
                              style: TextStyle(
                                fontSize: 25.0 ,
                                fontWeight: FontWeight.bold ,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: !isMale?Colors.blue : Colors.grey[400] ,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0 ,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT',
                      style: TextStyle(
                        fontSize: 25.0 ,
                        fontWeight: FontWeight.bold ,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('${hight.round()}',
                          style: TextStyle(
                            fontSize: 40.0 ,
                            fontWeight: FontWeight.w900 ,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text('CM',
                          style: TextStyle(
                            fontSize: 20.0 ,
                            fontWeight: FontWeight.bold ,
                          ),
                        ),
                      ],
                    ),
                    Slider(value:hight,
                        min: 80.0 ,
                        max: 220.0 ,
                        onChanged: (value){
                       setState((){
                         hight = value ;
                       });
          } ),

                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.grey[400] ,
                ),

              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT',
                            style: TextStyle(
                              fontSize: 25.0 ,
                              fontWeight: FontWeight.bold ,
                            ),
                          ),
                          Text('$weight',
                            style: TextStyle(
                              fontSize: 40.0 ,
                              fontWeight: FontWeight.w900 ,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               FloatingActionButton(onPressed: (){
                                 setState((){
                                   weight-- ;
                                 });
                               },
                                 heroTag: 'weight-',
                                 mini: true,
                                 child: Icon(
                                   Icons.remove ,
                                 ),
                               ),
                              FloatingActionButton(onPressed: (){
                                setState((){
                                  weight++ ;
                                });
                              },
                                heroTag: 'weight+',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],)
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0,),
                        color: Colors.grey[400] ,
                      ),

                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',
                            style: TextStyle(
                              fontSize: 25.0 ,
                              fontWeight: FontWeight.bold ,
                            ),
                          ),
                          Text('$age',
                            style: TextStyle(
                              fontSize: 40.0 ,
                              fontWeight: FontWeight.w900 ,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState((){
                                  age-- ;
                                });
                              },
                                heroTag: 'age-',
                                mini: true,
                                child: Icon(
                                  Icons.remove ,
                                ),
                              ),
                              FloatingActionButton(onPressed: (){
                                setState((){
                                  age++ ;
                                });
                              },
                                heroTag: 'age+',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],)
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0,),
                        color: Colors.grey[400] ,
                      ),

                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(onPressed: (){
              double result = weight / pow(hight/100, 2) ;
              print(result.round());
              Navigator.push(
                context,
                MaterialPageRoute(builder:
                (context)=>bmiResult(
                  result: result.round(),
                  age: age,
                  isMale: isMale,
                ),
                )
              );
            },
              height: 50.0,
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white ,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
