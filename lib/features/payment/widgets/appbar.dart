import 'package:flutter/material.dart';

// 💡 يجب أن تنفذ هذا الواجهة لكي تعمل كودجت AppBar مخصص
class AppbarPayment extends StatelessWidget implements PreferredSizeWidget {
  const AppbarPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Payment Methods",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
      elevation: 0,
      actions: [
        Icon(Icons.search),
        SizedBox(width: 15),
        Icon(Icons.favorite_border),
        SizedBox(width: 10),
      ],
    );
  }

  // 💡 إضافة دالة preferredSize المطلوبة من PreferredSizeWidget
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}