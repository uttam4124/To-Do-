import "package:flutter/material.dart";
import "package:todo_app/main.dart";

import "my_button.dart";

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSaved;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSaved,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.brown,
        content: Container(
          height: 120,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Add a new task"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // save button
                    MyButton(
                      text: "save",
                      onPressed: onSaved,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    // cancel button
                    MyButton(
                      text: "Cancel",
                      onPressed: onCancel,
                    ),
                  ],
                )
              ]),
        ));
  }
}
