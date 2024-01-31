import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_notifier/provider_notifier/mycontroller.dart';

void main()
{
    runApp(MaterialApp(
      home: first(),
    ));
}
class first extends StatelessWidget {
  // const first({super.key});
  TextEditingController tr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return mycontroller();
      },
      // create: (context) => mycontroller(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Provider demo"),
        ),
        body: Consumer<mycontroller>(
          builder: (context, m, child) {
            return Column(children: [
              TextField(controller: tr,),
              ElevatedButton(onPressed: (){
                m.credit(tr.text);
              }, child: Text("Credit")),
              ElevatedButton(onPressed: (){
                m.debit(tr.text);
              }, child: Text("Debit")),
              Text("TOTAL AMOUNT = ${m.amount}")
            ],);
          },
        ),
      ),
    );
  }
}
