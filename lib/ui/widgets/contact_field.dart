import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/ui/controller/theme_controller.dart';

class ContactField extends StatelessWidget {
  final String label;
  final bool expand;
  final Function(String) onChanged;
  final ThemeController controller;

  const ContactField({
    Key? key,
    required this.label,
    required this.expand,
    required this.onChanged,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Obx(
        () => TextFormField(
          style: TextStyle(
            color: controller.isDark.value
                ? Colors.white
                : const Color(0xff04363D),
          ),
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(
              color: controller.isDark.value
                  ? Colors.white60
                  : const Color(0xff04363D),
            ),
            filled: true,
            fillColor:
                controller.isDark.value ? Colors.white12 : Colors.black12,
            hoverColor:
                controller.isDark.value ? Colors.white12 : Colors.black12,
            alignLabelWithHint: true,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: controller.isDark.value
                    ? Colors.white
                    : const Color(0xff04363D),
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff04363D)),
            ),
          ),
          cursorColor:
              controller.isDark.value ? Colors.white : const Color(0xff04363D),
          keyboardType:
              expand ? TextInputType.multiline : TextInputType.emailAddress,
          maxLines: expand ? 7 : 1,
          minLines: expand ? 5 : 1,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
