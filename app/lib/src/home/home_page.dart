import 'package:flutter/material.dart';
import 'package:listinha/src/home/widgets/DrawerCustom.dart';
import 'package:listinha/src/shared/widgerts/UserImageButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerCustom(),
      appBar: AppBar(
        title: const Text("Lista"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: UserImageButton(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.edit),
        label: Text("Nova lista"),
        onPressed: () {
          Navigator.of(context).pushNamed('./edit');
        },
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SegmentedButton<int>(
                segments: const [
                  ButtonSegment(
                    value: 0,
                    label: Text("todos"),
                  ),
                  ButtonSegment(
                    value: 1,
                    label: Text("Pendentes"),
                  ),
                  ButtonSegment(
                    value: 2,
                    label: Text("Concluídas"),
                  ),
                  ButtonSegment(
                    value: 3,
                    label: Text("Desativadas"),
                  ),
                ],
                selected: const {3},
                onSelectionChanged: (values) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
