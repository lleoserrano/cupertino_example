import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoModelDatePicker extends StatelessWidget {
  const CupertinoModelDatePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: const Text('Cupertino Date-Picker'),
      color: Colors.blueGrey,
      onPressed: () => showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Center(
            child: Wrap(
              children: [
                SizedBox(
                  height: 150,
                  child: CupertinoDatePicker(
                    backgroundColor: Colors.white,
                    onDateTimeChanged: (_) {},
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
