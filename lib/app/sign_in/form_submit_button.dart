import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/common_widgets/custom_raised_button.dart';

class FormSubmitButton extends CustomRaisedButton {
  FormSubmitButton({
    required String text,
    required VoidCallback onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          height: 44,
          color: Colors.indigo,
          borderRadius: 25,
          onPressed: onPressed,
        );
}
