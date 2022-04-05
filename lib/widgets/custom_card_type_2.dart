import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? nameCard;

  const CustomCardType2({
    Key? key,
    required this.imageUrl,
    this.nameCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/images/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (nameCard != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 20, bottom: 10),
              child: Text(nameCard ?? 'No Title'),
            )
        ],
      ),
    );
  }
}
