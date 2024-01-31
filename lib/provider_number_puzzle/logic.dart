import 'package:flutter/cupertino.dart';

class logic extends ChangeNotifier
{
      List l = ["1","2","3","4","6","8","7","5",""];
      String msg = " ";

      fun_cal1()
      {
            if(l[1]=="")
            {
                  l[1]=l[0];
                  l[0]="";
            }
            else if(l[3]=="")
            {
                  l[3]=l[0];
                  l[0]="";
            }
            fun_msg();
            notifyListeners();
      }

      fun_cal2()
      {
            if(l[0]=="")
            {
                  l[0]=l[1];
                  l[1]="";
                  
            }
            else if(l[2]=="")
            {
                  l[2]=l[1];
                  l[1]="";
                  
            }
            else if(l[4]=="")
            {
                  l[4]=l[1];
                  l[1]="";
                  
            }
            fun_msg();
            notifyListeners();
      }

      fun_cal3()
      {
            if(l[1]=="")
            {
                  l[1]=l[2];
                  l[2]="";
                  
            }
            else if(l[5]=="")
            {
                  l[5]=l[2];
                  l[2]="";
                  
            }
            fun_msg();
            notifyListeners();
      }

      fun_cal4()
      {
            if(l[0]=="")
            {
                  l[0]=l[3];
                  l[3]="";
                  
            }
            else if(l[6]=="")
            {
                  l[6]=l[3];
                  l[3]="";
                  
            }
            else if(l[4]=="")
            {
                  l[4]=l[3];
                  l[3]="";
                  
            }
            fun_msg();
            notifyListeners();
      }

      fun_cal5()
      {
            if(l[1]=="")
            {
                  l[1]=l[4];
                  l[4]="";
                  
            }
            else if(l[3]=="")
            {
                  l[3]=l[4];
                  l[4]="";
                  
            }
            else if(l[5]=="")
            {
                  l[5]=l[4];
                  l[4]="";
                  
            }
            else if(l[7]=="")
            {
                  l[7]=l[4];
                  l[4]="";
                  
            }
            fun_msg();
            notifyListeners();
      }

      fun_cal6()
      {
            if(l[2]=="")
            {
                  l[2]=l[5];
                  l[5]="";
                  
            }
            else if(l[4]=="")
            {
                  l[4]=l[5];
                  l[5]="";
                  
            }
            else if(l[8]=="")
            {
                  l[8]=l[5];
                  l[5]="";
                  
            }
            fun_msg();
            notifyListeners();
      }

      fun_cal7()
      {
            if(l[3]=="")
            {
                  l[3]=l[6];
                  l[6]="";
                  
            }
            else if(l[7]=="")
            {
                  l[7]=l[6];
                  l[6]="";
                  
            }
            fun_msg();
            notifyListeners();
      }

      fun_cal8()
      {
            if(l[6]=="")
            {
                  l[6]=l[7];
                  l[7]="";
                  
            }
            else if(l[4]=="")
            {
                  l[4]=l[7];
                  l[7]="";
                  
            }
            else if(l[8]=="")
            {
                  l[8]=l[7];
                  l[7]="";
                  
            }
            fun_msg();
            notifyListeners();
      }

      fun_cal9()
      {
            if(l[5]=="")
            {
                  l[5]=l[8];
                  l[8]="";
                  
            }
            else if(l[7]=="")
            {
                  l[7]=l[8];
                  l[8]="";
                  
            }
            fun_msg();
            notifyListeners();
      }

      fun_msg()
      {
            if(l[0]=="1" && l[1]=="2" && l[2]=="3" && l[3]=="4" && l[4]=="5" && l[5]=="6" && l[6]=="7" && l[7]=="8" && l[8]=="")
            {
                  msg = "YOU ARE WIN";
            }
            notifyListeners();
      }
}