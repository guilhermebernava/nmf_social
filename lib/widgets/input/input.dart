import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../themes/app_colors.dart';

class Input extends StatefulWidget {
  final String text;
  final String hintText;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final Color color;
  final bool ocultText;
  final TextEditingController controller;

  const Input({
    Key? key,
    required this.text,
    required this.hintText,
    required this.controller,
    this.textInputType = TextInputType.text,
    required this.validator,
    this.inputFormatters,
    this.color = AppColors.black,
    this.ocultText = false,
  }) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  late bool visibleText;

  @override
  void initState() {
    super.initState();
    visibleText = widget.ocultText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.outfit(
        fontSize: 16,
        color: widget.color,
      ),
      validator: widget.validator,
      keyboardType: widget.textInputType,
      inputFormatters: widget.inputFormatters,
      controller: widget.controller,
      obscureText: visibleText,
      decoration: InputDecoration(
        suffixIcon: widget.ocultText
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    visibleText = !visibleText;
                  });
                },
                child: !visibleText
                    ? Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.05),
                        child: const Icon(
                          Icons.visibility,
                          color: AppColors.white,
                          size: 25,
                        ),
                      )
                    : Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.05),
                        child: const Icon(
                          Icons.visibility_off,
                          color: AppColors.white,
                          size: 25,
                        ),
                      ),
              )
            : null,
        isDense: true,
        labelText: widget.text,
        labelStyle: GoogleFonts.outfit(
          fontSize: 20,
          color: widget.color,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        hintText: widget.hintText,
        hintStyle: GoogleFonts.outfit(
          fontSize: 16,
          color: widget.color,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: AppColors.secondary, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: AppColors.primary, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.red, width: 1.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.red, width: 1.0),
        ),
      ),
    );
  }
}
