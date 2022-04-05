import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.account_balance_outlined,
            color: AppTheme.primary,
          ),
          title: Text('Soy un titulo'),
          subtitle: Text(
              'Anim est do sit esse labore ipsum elit deserunt. Aute voluptate incididunt velit non elit. Consectetur ipsum tempor aliquip sint aliquip laboris quis laboris. Nisi consectetur pariatur sunt eiusmod non sint ipsum voluptate anim duis id irure consequat. Minim id sunt cupidatat est. Non quis esse veniam amet est irure in. Irure ullamco irure consectetur duis anim veniam sit.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Ok'),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
