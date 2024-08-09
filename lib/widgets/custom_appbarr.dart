import 'package:flutter/material.dart';

class CusttomAppbar extends StatelessWidget {
  const CusttomAppbar({super.key, required this.title, required this.icon});
final String title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row( 
      
      children: [
         Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(flex: 1,),
        Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.14),
              borderRadius: BorderRadius.circular(16)),
          child: Center(
            child: IconButton(
              icon:  Icon(icon, color: Colors.white, size: 35),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
