import 'package:flutter/material.dart';
import 'package:shoestoreui/models/shoe.dart';
import 'package:shoestoreui/utils/theme.dart';

class FavButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Shoe shoe;

  const FavButton(this.shoe, {Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: onTap,
        child: Icon(
          Icons.favorite,
          color: shoe.isFavorite ? StoreTheme.primaryColor : StoreTheme.black,
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith(
            (states) => const CircleBorder(),
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => StoreTheme.grey,
          ),
        ),
      ),
    );
  }
}
