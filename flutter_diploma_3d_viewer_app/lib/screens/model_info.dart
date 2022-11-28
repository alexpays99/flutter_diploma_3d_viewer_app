import 'package:flutter/material.dart';
import 'package:flutter_diploma_3d_viewer_app/provider/ModelProvider.dart';
import 'package:provider/provider.dart';

class ModelInfo extends StatelessWidget {
  const ModelInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final modelProvider = Provider.of<ModelProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(modelProvider.model.title),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: modelProvider.model.model,
        ),
      ),
    );
  }
}
