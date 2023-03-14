import 'package:flutter/material.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      onDestinationSelected: (index) {
        if (index == 1) {
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed("/config");
        }
      },
      children: [
        Padding(
          padding: EdgeInsets.only(top: 22, left: 16, right: 16, bottom: 22),
          child: Text(
            "Opções",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.sync),
          label: Row(
            children: [
              Text("Sincronizar"),
              const SizedBox(
                width: 20,
              ),
              Text(
                "12/12/2022 às 20:23",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text("configurações"),
        )
      ],
    );
  }
}
