import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoModelPicker extends StatelessWidget {
  const CupertinoModelPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: const Text('Cupertino Picker'),
      onPressed: () => showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Center(
            child: Wrap(
              children: [
                SizedBox(
                  height: 150,
                  child: CupertinoPicker(
                    backgroundColor: Colors.white,
                    onSelectedItemChanged: (value) {},
                    itemExtent: 32.0,
                    children: const [
                      Text('Item'),
                      Text('Item'),
                      Text('Item'),
                      Text('Item'),
                      Text('Item'),
                      Text('Item'),
                      Text('Item'),
                      Text('Item'),
                      Text('Item'),
                      Text('Item'),
                      Text('Item'),
                      Text('Item'),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
