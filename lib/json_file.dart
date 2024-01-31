import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: json_file(),debugShowCheckedModeBanner: false,
  ));
}
class json_file extends StatefulWidget {
  const json_file({super.key});

  @override
  State<json_file> createState() => _json_fileState();
}

class _json_fileState extends State<json_file> {

  List<Map> l = [
    {
      'name' : 'demo',
      'contact' : 123235,
      'marks' : {
        'sub1' : {'theory' : 80 , 'pra' : 77},
        'sub2' : {'theory' : 32 , 'pra' : 56},
        'sub3' : {'theory' : 44 , 'pra' : 75},
      },
    },
    {
      'name' : 'test',
      'contact' : 324235,
      'marks' : {
        'sub1' : {'theory' : 34 , 'pra' : 74},
        'sub2' : {'theory' : 54 , 'pra' : 45},
        'sub3' : {'theory' : 56 , 'pra' : 75},
      },
    },
    {
      'name' : 'app',
      'contact' : 34555,
      'marks' : {
        'sub1' : {'theory' : 37 , 'pra' : 70},
        'sub2' : {'theory' : 98 , 'pra' : 50},
        'sub3' : {'theory' : 78 , 'pra' : 60},
      },
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAP IN JSON"),
      ),
      body: ListView.builder(
        itemCount: l.length,
        itemBuilder: (context, index) {
          Map m = l[index]['marks'];
          return ExpansionTile(
            title: Text("${l[index]['name']}"),
            subtitle: Text("${l[index]['contact']}",style: TextStyle(color: Colors.black38)),
            children: m.entries.map((e) => Text("${e.key} : Theory : ${e.value['theory']} prac : ${e.value['pra']}")).toList(),
          );
        },
      ),
    );
  }
}
