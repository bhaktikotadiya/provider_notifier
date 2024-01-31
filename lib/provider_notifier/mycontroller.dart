import 'package:flutter/cupertino.dart';

class mycontroller extends ChangeNotifier
{
    int amount = 1000;
    credit(String str)
    {
        amount = amount + int.parse(str);
        notifyListeners();
    }
    debit(String str)
    {
      amount = amount - int.parse(str);
      notifyListeners();
    }
}