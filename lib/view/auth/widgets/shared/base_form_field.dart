import 'package:flutter/material.dart';

class BaseFormField extends StatefulWidget {
  final String text;
  final void Function(String)? onChanged;
  final bool obscureText;
  final void Function()? onSuffixPressed;
  final Widget? suffixIcon;
  final String? labelText;
  final String? errorText;
  final TextInputType inputType;

  const BaseFormField({
    super.key,
    required this.text,
    required this.onChanged,
    this.obscureText = false,
    this.onSuffixPressed,
    this.suffixIcon,
    required this.labelText,
    required this.errorText,
    required this.inputType,
  });

  @override
  State<BaseFormField> createState() => _BaseFormFieldState();
}

class _BaseFormFieldState extends State<BaseFormField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.text = widget.text;
    return TextField(
      controller: _controller,
      cursorColor: const Color(0xFF42C83C),
      onChanged: widget.onChanged,
      keyboardType: widget.inputType,
      style: const TextStyle(
        fontSize: 16,
      ),
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        suffixIcon: _getSuffix(),
        helperText: ' ',
        contentPadding: const EdgeInsets.all(20),
        labelText: widget.labelText,
        errorText: widget.errorText,
      ),
    );
  }

  Widget _getSuffix() {
    final suffixIcon = widget.suffixIcon;
    if (suffixIcon == null) return const SizedBox();
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: SizedBox.square(
        dimension: 48,
        child: IconButton(
          onPressed: widget.onSuffixPressed,
          icon: suffixIcon,
        ),
      ),
    );
  }
}
