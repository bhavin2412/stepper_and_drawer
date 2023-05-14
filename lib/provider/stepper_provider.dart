import 'package:flutter/cupertino.dart';

class StepperProvider extends ChangeNotifier
{
  int stepindex=0;
  void add()
  {
    if(stepindex<5)
    {
      stepindex++;
      notifyListeners();
    }
  }
  void minus()
  {
    if(stepindex>0)
    {
      stepindex--;
      notifyListeners();
    }
  }
}