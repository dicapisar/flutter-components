import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MenuOption> menuOptions = AppRoutes.menuOption;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            final MenuOption option = menuOptions[index];
            return ListTile(
              title: Text(option.name),
              leading: Icon(option.icon),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
              ),
              onTap: () {
                Navigator.pushNamed(context, option.route);
              },
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOption.length),
    );
  }
}
