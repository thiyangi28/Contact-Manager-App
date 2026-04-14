import 'package:flutter/material.dart';
import 'models/contact.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
  
  
}
  class _HomeScreenState extends State<HomeScreen> {

      //Dummy contact data
    final List<Contact> contacts = [
      Contact(id: 1, name: 'John Doe', phone: '123-456-7890'),
      Contact(id: 2, name: 'Jane Smith', phone: '987-654-3210'),
      Contact(id: 3, name: 'Alice Johnson', phone: '555-123-4567'),
    ];

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            title: Text(contact.name),
            subtitle: Text(contact.phone),
            leading: CircleAvatar(child: Text(contact.name[0])),
            trailing: const Icon(Icons.phone,color:Colors.green),
          );
        },
      ),
    );
  }
  }