import 'package:flutter/cupertino.dart';
import 'package:flutter_diploma_3d_viewer_app/models/model.dart';

class ModelProvider extends ChangeNotifier {
  late Model model;

  void setModel(Model m) {
    model = m;
    notifyListeners();
  }
}
