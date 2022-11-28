import 'package:flutter/material.dart';
import 'package:flutter_diploma_3d_viewer_app/models/model.dart';
import 'package:flutter_diploma_3d_viewer_app/provider/ModelProvider.dart';
import 'package:model_viewer/model_viewer.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Model> molerViewer = [
    Model(
      title: "BAG",
      model: ModelViewer(
        src: 'lib/assets/bag.glb',
        alt: "A 3D model of an astronaut",
        ar: true,
        autoRotate: true,
        cameraControls: true,
        backgroundColor: Colors.yellow,
      ),
    ),
    Model(
      title: "BAG",
      model: ModelViewer(
        src: 'lib/assets/Astronaut.glb',
        alt: "A 3D model of an astronaut",
        ar: true,
        autoRotate: true,
        cameraControls: true,
        backgroundColor: Colors.red,
      ),
    ),
    Model(
      title: "BAG",
      model: ModelViewer(
        src: 'lib/assets/uploads-files-2382092-untitled.glb',
        alt: "A 3D model of an astronaut",
        ar: true,
        autoRotate: true,
        cameraControls: true,
        backgroundColor: Colors.green,
      ),
    ),
    Model(
      title: "BAG",
      model: ModelViewer(
        src: 'lib/assets/uploads-files-3641433-Octopus_toy.glb',
        alt: "A 3D model of an astronaut",
        ar: true,
        autoRotate: true,
        cameraControls: true,
        backgroundColor: Colors.grey,
      ),
    ),
    Model(
      title: "BAG",
      model: ModelViewer(
        src: 'lib/assets/uploads-files-3803418-bed83h.glb',
        alt: "A 3D model of an astronaut",
        ar: true,
        autoRotate: true,
        cameraControls: true,
        backgroundColor: Colors.blue,
      ),
    ),
    Model(
      title: "BAG",
      model: ModelViewer(
        src: 'lib/assets/uploads-files-4018512-ice+cream++only.glb',
        alt: "A 3D model of an astronaut",
        ar: true,
        autoRotate: true,
        cameraControls: true,
        backgroundColor: Colors.blueAccent,
      ),
    ),
    Model(
      title: "BAG",
      model: ModelViewer(
        src: 'lib/assets/bag.glb',
        alt: "A 3D model of an astronaut",
        ar: true,
        autoRotate: true,
        cameraControls: true,
        backgroundColor: Colors.redAccent,
      ),
    ),
    Model(
      title: "BAG",
      model: ModelViewer(
        src: 'lib/assets/bag.glb',
        alt: "A 3D model of an astronaut",
        ar: true,
        autoRotate: true,
        cameraControls: true,
        backgroundColor: Colors.redAccent,
      ),
    ),
    Model(
      title: "BAG",
      model: ModelViewer(
        src: 'lib/assets/bag.glb',
        alt: "A 3D model of an astronaut",
        ar: true,
        autoRotate: true,
        cameraControls: true,
        backgroundColor: Colors.redAccent,
      ),
    ),
    Model(
      title: "BAG",
      model: ModelViewer(
        src: 'lib/assets/bag.glb',
        alt: "A 3D model of an astronaut",
        ar: true,
        autoRotate: true,
        cameraControls: true,
        backgroundColor: Colors.redAccent,
      ),
    ),
    Model(
      title: "BAG",
      model: ModelViewer(
        src: 'lib/assets/bag.glb',
        alt: "A 3D model of an astronaut",
        ar: true,
        autoRotate: true,
        cameraControls: true,
        backgroundColor: Colors.redAccent,
      ),
    ),
    Model(
      title: "BAG",
      model: ModelViewer(
        src: 'lib/assets/bag.glb',
        alt: "A 3D model of an astronaut",
        ar: true,
        autoRotate: true,
        cameraControls: true,
        backgroundColor: Colors.redAccent,
      ),
    ),
    Model(
      title: "BAG",
      model: ModelViewer(
        src: 'lib/assets/bag.glb',
        alt: "A 3D model of an astronaut",
        ar: true,
        autoRotate: true,
        cameraControls: true,
        backgroundColor: Colors.redAccent,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final modelProvider = Provider.of<ModelProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('3D Models'),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: molerViewer.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 10.0),
            child: InkWell(
              onTap: () {
                modelProvider.setModel(molerViewer[index]);
                Navigator.of(context).pushNamed('/model_info');
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(64, 137, 165, 170),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: molerViewer[index].model,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Spacer(),
                        const Icon(
                          Icons.favorite,
                          color: Color.fromARGB(108, 255, 82, 82),
                        ),
                        const SizedBox(width: 10),
                        Text(molerViewer[index].title),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
