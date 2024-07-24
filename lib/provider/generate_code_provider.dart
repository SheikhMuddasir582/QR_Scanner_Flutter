import'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GenerateCodeProvider with ChangeNotifier{
  TextEditingController _urlController= TextEditingController();

  TextEditingController get urlController => _urlController;

  void generateCode(){
    notifyListeners();
  }


}

