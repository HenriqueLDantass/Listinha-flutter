import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/shared/stores/app_store.dart';

class ConfigurePage extends StatefulWidget {
  const ConfigurePage({super.key});

  @override
  State<ConfigurePage> createState() => _ConfigurePageState();
}

class _ConfigurePageState extends State<ConfigurePage> {
  @override
  Widget build(BuildContext context) {
    final appStore = context.watch<AppStore>((store) => store.themeMode);
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Container(
          width: double.infinity,
          height: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Configurações',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "Tema",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              RadioListTile<ThemeMode>(
                value: ThemeMode.system,
                title: const Text("Sistema"),
                groupValue: appStore.themeMode.value,
                onChanged: appStore.changeThemeMode,
              ),
              RadioListTile<ThemeMode>(
                value: ThemeMode.light,
                title: const Text("Claro"),
                groupValue: appStore.themeMode.value,
                onChanged: appStore.changeThemeMode,
              ),
              RadioListTile<ThemeMode>(
                value: ThemeMode.dark,
                title: const Text("Escuro"),
                groupValue: appStore.themeMode.value,
                onChanged: appStore.changeThemeMode,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 10),
                    child: Text(
                      "Controle de dados",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      child: Text("Apagar cache e reiniciar app"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
