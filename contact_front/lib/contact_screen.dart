import 'package:flutter/material.dart';

class AddContactScreen extends StatefulWidget {
  const AddContactScreen({super.key});

  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
  }
  class _AddContactScreenState extends State<AddContactScreen> {
   
   final nameController = TextEditingController();
   final phoneController = TextEditingController();

    @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar( title: const Text('Add New Contact')),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Name'),
          ),
          TextField(
            controller: phoneController,
            decoration: const InputDecoration(labelText: 'Phone'),
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Here you would typically save the contact to a database or state management solution
              final name = nameController.text;
              final phone = phoneController.text;
              print('Contact Saved: $name, $phone');
              Navigator.pop(context);
            },
            child: const Text('Save Contact'),
          ),
        ],
      ),
    ),
  );
}