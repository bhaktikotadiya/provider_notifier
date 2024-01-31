import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_notifier/provider_number_puzzle//logic.dart';

void main()
{
      runApp(MaterialApp(
        home: main_page(),debugShowCheckedModeBanner: false,
      ));
}
class main_page extends StatelessWidget {
  // const main_page({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => logic(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("TIC TAC TOE"),
        ),
        body: Consumer<logic>(
          builder: (context, l1, child) {
            return AnimateGradient(
              primaryBegin: Alignment.topLeft,
              primaryEnd: Alignment.centerLeft,
              secondaryBegin: Alignment.bottomLeft,
              secondaryEnd: Alignment.centerRight,
              reverse: true,
              animateAlignments: true,
              primaryColors: [
                Colors.pink,
                Colors.pinkAccent,
                Colors.white,
              ],
              secondaryColors: [
                Colors.white,
                Colors.blueAccent,
                Colors.blue,
              ],
              child: Container(
                height: double.infinity,width: double.infinity,
                padding: EdgeInsets.fromLTRB(90,150,90,150),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  // color: Colors.red,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 3,)),
                  padding: EdgeInsets.all(20),
                  child: Column(children: [
                    Expanded(
                      child: Row(children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              l1.fun_cal1();
                            },
                            child: Container(
                              width: 100,height: 100,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 20,right: 10),
                              decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.transparent,),
                              child: Text("${l1.l[0]}"),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              l1.fun_cal2();
                            },
                            child: Container(
                              width: 100,height: 100,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 20,right: 10),
                              decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.transparent,),
                              child: Text("${l1.l[1]}"),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              l1.fun_cal3();
                            },
                            child: Container(
                              width: 100,height: 100,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.transparent,),
                              child: Text("${l1.l[2]}"),
                            ),
                          ),
                        ),
                      ],),
                    ),
                    Expanded(
                      child: Row(children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              l1.fun_cal4();
                            },
                            child: Container(
                              width: 100,height: 100,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 20,right: 10),
                              decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.transparent,),
                              child: Text("${l1.l[3]}"),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              l1.fun_cal5();
                            },
                            child: Container(
                              width: 100,height: 100,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 20,right: 10),
                              decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.transparent,),
                              child: Text("${l1.l[4]}"),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              l1.fun_cal6();
                            },
                            child: Container(
                              width: 100,height: 100,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 20,),
                              decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.transparent,),
                              child: Text("${l1.l[5]}"),
                            ),
                          ),
                        ),
                      ],),
                    ),
                    Expanded(
                      child: Row(children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              l1.fun_cal7();
                            },
                            child: Container(
                              width: 100,height: 100,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 20,right: 10),
                              decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.transparent,),
                              child: Text("${l1.l[6]}"),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              l1.fun_cal8();
                            },
                            child: Container(
                              width: 100,height: 100,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 20,right: 10),
                              decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.transparent,),
                              child: Text("${l1.l[7]}"),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              l1.fun_cal9();
                            },
                            child: Container(
                              width: 100,height: 100,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 20,),
                              decoration: BoxDecoration(border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black87),color: Colors.transparent,),
                              child: Text("${l1.l[8]}"),
                            ),
                          ),
                        ),
                      ],),
                    ),
                    Text("${l1.msg}",style: TextStyle(fontSize: 30),),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return main_page();
                      },));
                    }, child: Text("RESET"))
                  ]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
