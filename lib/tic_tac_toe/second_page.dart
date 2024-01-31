import 'package:flutter/cupertino.dart';

class myclass1 extends ChangeNotifier
{
  int s1=0;
  int temp=0;

  bool is_win = false;
  List l = List.filled(9, "");
  // List m = List.filled(9, false);

  String msg = "";

  fun_get(String a)
  {
    s1=int.parse(a);

      if(l[s1]=="")
      {
          if(temp%2==0)
          {
            l[s1] = "X";
          }
          else
          {
            l[s1] = "O";
          }
          temp++;
          fun_win();
      }
      notifyListeners();
  }

  fun_msg()
  {
    msg="";
    for(int i=0 ; i<l.length ; i++)
    {
      l[i]="";
      is_win=false;
      // m.value[i]=false;
    }
    notifyListeners();
  }

  fun_win()
  {
    if(l[0]=="X" && l[1]=="X" && l[2]=="X" || l[3]=="X" && l[4]=="X" && l[5]=="X" || l[6]=="X" && l[7]=="X" && l[8]=="X" || l[0]=="X" && l[3]=="X" && l[6]=="X" || l[1]=="X" && l[4]=="X" && l[7]=="X" || l[2]=="X" && l[5]=="X" && l[8]=="X" || l[0]=="X" && l[4]=="X" && l[8]=="X" || l[2]=="X" && l[4]=="X" && l[6]=="X")
    {
      msg="PLAYER X IS WIN";
      is_win=true;
    }
    else if(l[0]=="O" && l[1]=="O" && l[2]=="O" || l[3]=="O" && l[4]=="O" && l[5]=="O" || l[6]=="O" && l[7]=="O" && l[8]=="O" || l[0]=="O" && l[3]=="O" && l[6]=="O" || l[1]=="O" && l[4]=="O" && l[7]=="O" || l[2]=="O" && l[5]=="O" && l[8]=="O" || l[0]=="O" && l[4]=="O" && l[8]=="O" || l[2]=="O" && l[4]=="O" && l[6]=="O")
    {
      msg="PLAYER O IS WIN";
      is_win=true;
    }
    else if(l[0]!="" && l[1]!="" && l[2]!="" && l[3]!="" && l[4]!="" && l[5]!="" && l[6]!="" && l[7]!="" && l[8]!="")
    {
      msg="MATCH DRAW";
    }
    notifyListeners();
  }
}