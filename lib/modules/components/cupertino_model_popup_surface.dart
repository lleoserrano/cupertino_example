import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoModelPopupSurface extends StatelessWidget {
  const CupertinoModelPopupSurface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: const Text('Cupertino PopupSurface'),
      onPressed: () => showCupertinoModalPopup(
        context: context,
        builder: (context) => const SafeArea(
          child: CupertinoPopupSurface(
            isSurfacePainted: true,
            child: Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Desculpe, este botão esta desativado.'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
