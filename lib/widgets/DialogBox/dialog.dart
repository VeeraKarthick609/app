import 'dart:ui';

import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  final Icon icon;
  final String title;
  final String? description;
  final String? checkBoxDesc;
  final bool isCheckBox;
  final VoidCallback? actionFunction;
  final Text actionText;
  const DialogBox(
      {super.key,
      required this.icon,
      required this.title,
      this.description,
      this.checkBoxDesc,
      required this.isCheckBox,
      required this.actionFunction,
      required this.actionText});

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Stack(
          children: [
            AlertDialog(
              title: Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Center(
                    child: Text(
                  widget.title,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                )),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.description ?? '',
                    style: const TextStyle(
                        fontWeight: FontWeight.w300, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Visibility(
                    visible: widget.isCheckBox,
                    child: Row(
                      children: [
                        Checkbox(
                            value: isSelected,
                            onChanged: (newValue) {
                              setState(() {
                                isSelected = newValue!;
                              });
                            }),
                        Expanded(
                          child: Text(
                            overflow: TextOverflow.clip,
                            widget.checkBoxDesc ?? '',
                            style: const TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 22, bottom: 22),
                  child: InkWell(
                    onTap: widget.actionFunction,
                    child: (widget.actionText),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 22, bottom: 22),
                  child: InkWell(
                    onTap: () {},
                    child: const Text("Cancel"),
                  ),
                ),
              ],
            ),
            Positioned(
              top: height / 3.5,
              left: width / 2.45,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black),
                height: 75,
                width: 75,
                child: widget.icon,
              ),
            ),
          ],
        ));
  }
}
