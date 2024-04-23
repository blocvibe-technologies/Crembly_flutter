import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final TextStyle? style;
  final bool isPassword;
  final Function(String value) ? onChanged;
  final String? errorText;
  final String ? hintText;
  final TextInputType ? inputType;
  final Color ? borderColor;

  CustomTextField({
    Key? key,
    this.controller,
    this.style,
    this.isPassword = false,
    this.onChanged,
    this.errorText,
    this.hintText,
    this.inputType, this.borderColor, // Default is not a password field


  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      height: 48.0,
      child: Center(

        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          controller: widget.controller,
          style: widget.style,
          obscureText: widget.isPassword ? _obscureText : false,

          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 8),
              filled: true, // Set to true to fill the background
              // fillColor: Colors.yellow[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),

              ),
              hintText: widget.hintText, // Placeholder text
              suffixIcon: widget.isPassword
                  ? IconButton(
                icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
                  : null,
              errorText: widget.errorText
          ),
          onChanged: (value){

            print('on stearm $value');
          },
          keyboardType: widget.inputType,
        ),
      ),
    );
  }
}
