import 'package:flutter/material.dart';

class FavoriteAccountCard extends StatelessWidget {
   String? accountName;
   String? accountDetails;
   String? bankName;
   IconData? icon;

  FavoriteAccountCard({
     this.accountName,
     this.accountDetails,
     this.bankName,
     this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              child: Icon(icon, color: Colors.white),
              backgroundColor: Colors.purple,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    accountName!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    accountDetails!,
                    style: const TextStyle(color: Colors.black54),
                  ),
                  Text(
                    bankName!,
                    style: const TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}