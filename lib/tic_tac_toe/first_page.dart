import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_notifier/tic_tac_toe/second_page.dart';

void main()
{
    runApp(MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => myclass1(),
          ),
        ],
        child: first_page(),
      ),
      debugShowCheckedModeBanner: false,
    ));
}
class first_page extends StatelessWidget {
  const first_page({super.key});

  @override
  Widget build(BuildContext context) {

    myclass1 m = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("TIC TAC TOE"),
        backgroundColor: Colors.yellow.shade200,
        centerTitle: true,
      ),
      body: AnimateGradient(
        primaryBegin: Alignment.topLeft,
        primaryEnd: Alignment.bottomLeft,
        secondaryBegin: Alignment.bottomLeft,
        secondaryEnd: Alignment.topRight,
        primaryColors: const [
          Colors.pink,
          Colors.pinkAccent,
          Colors.white,
        ],
        secondaryColors: const [
          Colors.white,
          Colors.blueAccent,
          Colors.blue,
        ],
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.all(100),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black,width: 3),
          ),
          child: Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.all(30),
              child: Column(children: [
                Expanded(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                  Expanded(
                    child: InkWell(onTap: () => m.is_win==false ? m.fun_get("0") : null,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        alignment: Alignment.center,
                        color: Colors.deepPurpleAccent.shade100,
                        margin: EdgeInsets.all(5),
                        child: Text(
                          "${m.l[0]}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () => m.is_win==false ? m.fun_get("1") : null,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        alignment: Alignment.center,
                        color: Colors.deepPurpleAccent.shade100,
                        margin: EdgeInsets.all(5),
                        child: Text(
                          "${m.l[1]}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () => m.is_win==false ? m.fun_get("2") : null,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        alignment: Alignment.center,
                        color: Colors.deepPurpleAccent.shade100,
                        margin: EdgeInsets.all(5),
                        child: Text(
                          "${m.l[2]}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],),
              ),
                Expanded(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                    Expanded(
                      child: InkWell(onTap: () => m.is_win==false ? m.fun_get("3") : null,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          alignment: Alignment.center,
                          color: Colors.deepPurpleAccent.shade100,
                          margin: EdgeInsets.all(5),
                          child: Text(
                            "${m.l[3]}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(onTap: () => m.is_win==false ? m.fun_get("4") : null,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          alignment: Alignment.center,
                          color: Colors.deepPurpleAccent.shade100,
                          margin: EdgeInsets.all(5),
                          child: Text(
                            "${m.l[4]}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(onTap: () => m.is_win==false ? m.fun_get("5") : null,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          alignment: Alignment.center,
                          color: Colors.deepPurpleAccent.shade100,
                          margin: EdgeInsets.all(5),
                          child: Text(
                            "${m.l[5]}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],),
                ),
                Expanded(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                    Expanded(
                      child: InkWell(onTap: () => m.is_win==false ? m.fun_get("6") : null,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          alignment: Alignment.center,
                          color: Colors.deepPurpleAccent.shade100,
                          margin: EdgeInsets.all(5),
                          child: Text(
                            "${m.l[6]}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(onTap: () => m.is_win==false ? m.fun_get("7") : null,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          alignment: Alignment.center,
                          color: Colors.deepPurpleAccent.shade100,
                          margin: EdgeInsets.all(5),
                          child: Text(
                            "${m.l[7]}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(onTap: () => m.is_win==false ? m.fun_get("8") : null,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          alignment: Alignment.center,
                          color: Colors.deepPurpleAccent.shade100,
                          margin: EdgeInsets.all(5),
                          child: Text(
                            "${m.l[8]}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],),
                ),
                Text(
                  "${m.msg}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                    onPressed: () {
                      m.fun_msg();
                    },
                    child: Text("RESET")),
            ]),
          )
        ),
      ),
    );
  }
}

//same button logic only one time
//     button(BuildContext context,myclass1 m,int i)
//     {
//
//     }
