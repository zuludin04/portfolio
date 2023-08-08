import 'package:flutter/material.dart';

class ContactField extends StatelessWidget {
  final String label;
  final bool expand;
  final Function(String) onChanged;
  final String? Function(String?) validator;
  final TextEditingController controller;

  const ContactField({
    Key? key,
    required this.label,
    required this.expand,
    required this.onChanged,
    required this.validator,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: TextFormField(
        controller: controller,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.white60),
          filled: true,
          fillColor: Colors.white12,
          hoverColor: Colors.white12,
          alignLabelWithHint: true,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff04363D)),
          ),
        ),
        cursorColor: Colors.white,
        keyboardType:
            expand ? TextInputType.multiline : TextInputType.emailAddress,
        maxLines: expand ? 7 : 1,
        minLines: expand ? 5 : 1,
        onChanged: onChanged,
        validator: validator,
      ),
    );
  }
}
