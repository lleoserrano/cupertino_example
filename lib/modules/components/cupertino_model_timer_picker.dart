import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoModelTimerPicker extends StatelessWidget {
  const CupertinoModelTimerPicker({Key? key, mode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: Colors.blueGrey,
      child: const Text('Cupertino TimerPicker'),
      onPressed: () => showCupertinoDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) => Center(
          child: Container(
            height: 50,
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: CupertinoTimerPicker(
              mode: CupertinoTimerPickerMode.hm,
              minuteInterval: 1,
              secondInterval: 1,
              onTimerDurationChanged: (Duration changedtimer) {},
            ),
          ),
        ),
      ),
    );
  }
}
