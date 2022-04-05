import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl: 'https://wallpapercave.com/wp/wp9383694.jpg',
            nameCard: 'Un Hermoso Paisaje',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://i.pinimg.com/originals/f6/6b/a4/f66ba4b259f5f14c9f94430e588a85ba.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl: 'https://wallpaper.dog/large/20392337.jpg',
          ),
        ],
      ),
    );
  }
}
