import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_notifier/two.dart';
//provider package pubget
void main()
{
  runApp(MaterialApp(
    home: MultiProvider(
        providers: [
      ChangeNotifierProvider(
        create: (context) => myclass(),
      ),
    ],
            child: first(),
    ),
  ));
}
class first extends StatelessWidget {
  // const first({super.key});
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  
  @override
  Widget build(BuildContext context) {

    // TextEditingController t1 = TextEditingController();
    // TextEditingController t2 = TextEditingController();

    myclass m = Provider.of(context);

    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextField(
          controller: t1,
        ),
        TextField(
          controller: t2,
        ),
        ElevatedButton(onPressed: () {
          m.fun_sum(t1.text, t2.text);
        }, child: Text("Submit")),
        Text("${m.sum}"),
      ]),
    );
  }
}

