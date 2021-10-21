import 'package:cupertino_example/modules/components/cupertino_model_date_picker.dart';
import 'package:cupertino_example/modules/components/cupertino_model_picker.dart';
import 'package:cupertino_example/modules/components/cupertino_model_popup_surface.dart';
import 'package:cupertino_example/modules/components/cupertino_model_timer_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDates extends StatelessWidget {
  const CupertinoDates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: true,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      child: Column(
        children: const [
          Divider(
            color: Colors.white,
          ),
          Flexible(child: CupertinoModelTimerPicker()),
          Divider(
            color: Colors.white,
          ),
          CupertinoModelPicker(),
          Divider(
            color: Colors.white,
          ),
          CupertinoModelDatePicker(),
          Divider(
            color: Colors.white,
          ),
          CupertinoModelPopupSurface(),
        ],
      ),
    );
  }
}
