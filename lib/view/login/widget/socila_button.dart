import 'package:flutter/material.dart';

class SocilaButton extends StatelessWidget {
  const SocilaButton({
    super.key, required this.icon, required this.title, required this.onTab,
  });
  final IconData icon;
  final String title;
  final VoidCallback onTab;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: OutlinedButton.icon(
        onPressed: onTab,
        icon: Icon(icon, color: Colors.black87, size: 24),
        label: Text(
          title,
          style: const TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          side: BorderSide(color: Colors.grey.shade300),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),

    );
  }
}

