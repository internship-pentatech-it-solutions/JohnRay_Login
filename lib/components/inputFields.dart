import "package:flutter/material.dart";

class InputFields extends StatefulWidget {
  final String label;
  final String hint;
  final IconData? icon;
  const InputFields(
      {super.key, required this.label, required this.hint, this.icon});

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.label,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: TextField(
          decoration: InputDecoration(
            hintText: widget.hint,
            suffixIcon: Icon(widget.icon),
            hintStyle: TextStyle(color: Color(0xff222222), fontSize: 18),
            border: OutlineInputBorder(borderSide: BorderSide(width: 3)),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff222222),
                width: 3,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff222222),
                width: 3,
              ),
            ),
          ),
        )),
      ],
    );
  }
}
