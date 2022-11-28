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
        backgroundColor: Colors.amber,
        title: Text(modelProvider.model.title),
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: modelProvider.model.model,
          ),
          const SizedBox(height: 20),
          Row(
            children: const [
              Spacer(),
              Text(
                'Price: 5',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(width: 10),
              Text(
                'Description:',
                style: TextStyle(fontSize: 25),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
