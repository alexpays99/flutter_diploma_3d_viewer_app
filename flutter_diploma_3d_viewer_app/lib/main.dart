import 'package:flutter/material.dart';
import 'package:model_viewer/model_viewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '3D Models'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<ModelViewer> models = [
    ModelViewer(
      src: 'lib/assets/bag.glb',
      alt: "A 3D model of an astronaut",
      ar: true,
      autoRotate: true,
      cameraControls: true,
    ),
    ModelViewer(
      src: 'lib/assets/Astronaut.glb',
      alt: "A 3D model of an astronaut",
      ar: true,
      autoRotate: true,
      cameraControls: true,
    ),
    ModelViewer(
      src: 'lib/assets/uploads-files-2382092-untitled.glb',
      alt: "A 3D model of an astronaut",
      ar: true,
      autoRotate: true,
      cameraControls: true,
    ),
    ModelViewer(
      src: 'lib/assets/uploads-files-3641433-Octopus_toy.glb',
      alt: "A 3D model of an astronaut",
      ar: true,
      autoRotate: true,
      cameraControls: true,
    ),
    ModelViewer(
      src: 'lib/assets/uploads-files-3803418-bed83h.glb',
      alt: "A 3D model of an astronaut",
      ar: true,
      autoRotate: true,
      cameraControls: true,
    ),
    ModelViewer(
      src: 'lib/assets/uploads-files-4018512-ice+cream++only.glb',
      alt: "A 3D model of an astronaut",
      ar: true,
      autoRotate: true,
      cameraControls: true,
    ),
    ModelViewer(
      src: 'lib/assets/bag.glb',
      alt: "A 3D model of an astronaut",
      ar: true,
      autoRotate: true,
      cameraControls: true,
    ),
    ModelViewer(
      src: 'lib/assets/bag.glb',
      alt: "A 3D model of an astronaut",
      ar: true,
      autoRotate: true,
      cameraControls: true,
    ),
    ModelViewer(
      src: 'lib/assets/bag.glb',
      alt: "A 3D model of an astronaut",
      ar: true,
      autoRotate: true,
      cameraControls: true,
    ),
    ModelViewer(
      src: 'lib/assets/bag.glb',
      alt: "A 3D model of an astronaut",
      ar: true,
      autoRotate: true,
      cameraControls: true,
    ),
    ModelViewer(
      src: 'lib/assets/bag.glb',
      alt: "A 3D model of an astronaut",
      ar: true,
      autoRotate: true,
      cameraControls: true,
    ),
    ModelViewer(
      src: 'lib/assets/bag.glb',
      alt: "A 3D model of an astronaut",
      ar: true,
      autoRotate: true,
      cameraControls: true,
    ),
    ModelViewer(
      src: 'lib/assets/bag.glb',
      alt: "A 3D model of an astronaut",
      ar: true,
      autoRotate: true,
      cameraControls: true,
    ),
    ModelViewer(
      src: 'lib/assets/bag.glb',
      alt: "A 3D model of an astronaut",
      ar: true,
      autoRotate: true,
      cameraControls: true,
    )
  ];

  @override
  void initState() {
    super.initState();
    models;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: models[index],
          );
        },
      ),
    );
  }
}
