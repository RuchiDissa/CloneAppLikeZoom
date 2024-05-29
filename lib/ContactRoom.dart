import 'package:flutter/material.dart';

class ContactRoom extends StatelessWidget {
  const ContactRoom({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contacts',
          style: const TextStyle(color: Colors.blueAccent),
        ),
      ),
      body: ListView.builder(
        itemCount:
            10, // You can replace this with the actual number of contacts
        itemBuilder: (context, index) {
          // Generate each contact ListTile
          return ListTile(
            leading: const Icon(
              Icons.account_circle,
              color: Colors.blueAccent,
            ), // Profile picture icon
            title: Text(
              'Contact Name ${index + 1}',
              style: const TextStyle(color: Colors.blueAccent),
            ), // Display index as a placeholder
            subtitle: const Text(
              'contact@example.com',
              style: TextStyle(color: Colors.blueAccent),
            ), // Display placeholder email
            onTap: () {
              // Action when a contact is tapped
            },
          );
        },
      ),
    );
  }
}
