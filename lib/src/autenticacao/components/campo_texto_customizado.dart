import 'package:flutter/material.dart';

class CampoTextoCustomizado extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSecret;

  const CampoTextoCustomizado({
    super.key,
    required this.icon,
    required this.label,
    this.isSecret = false,
  });

  @override
  State<CampoTextoCustomizado> createState() => _CampoTextoCustomizadoState();
}

class _CampoTextoCustomizadoState extends State<CampoTextoCustomizado> {
  late bool isObscure;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        obscureText: isObscure,
        style: const TextStyle(
          color: Color.fromARGB(152, 11, 10, 10), 
          fontWeight: FontWeight.w600, 
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(widget.icon, color: Colors.black54),
          suffixIcon: widget.isSecret
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: Icon(
                    isObscure ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey[700], 
                  ),
                )
              : null,
          labelText: widget.label,
          labelStyle: const TextStyle(
            color: Colors.black54, 
            fontWeight: FontWeight.w500,
          ),
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(
              color: Colors.black54, 
            ),
          ),
        ),
      ),
    );
  }
}
