import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(),
    );
  }
}

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({super.key});

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff25D366),
        title: const Text('WhatsApp'),
        actions: const <Widget>[
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ChatList(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff25D366),
        child: const Icon(Icons.chat, color: Colors.white),
        onPressed: () {},
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  final List<Map<String, String>> chats = [
    {
      'nama': 'Febri',
      'pesan': 'Halo apa kabar ?',
      'waktu': '19:30',
      'fotoProfil':
          'https://www.google.com/search?sca_esv=767d8031c0c3a436&sxsrf=ADLYWIK93FNX4ugt-cXLFFbGeU0KNTiT1A:1730032652862&q=avatar+wa&udm=2&fbs=AEQNm0CTI4ghiYmMI-A67QciKvwhEVBEZaKMmvvXvCV-ZrcsMDCwu_Xov0GIuieX7qwfgMcm9XPxbfqkqMS9xlvADo3wR4x1nMEG8z6tQhjS8wP2VRjI342OaoH-rB3MuUP3WkX2rkP4nAPBsvJ2Z5-TF1AgObFxcev8KrLlxpW-6l4QzsA5897LI0nytBjJLLDKtuyc9QYBG9IFy7BZ7_Q3TtLgncNx4A&sa=X&ved=2ahUKEwiT4uTtya6JAxVOU2wGHbRfKAcQtKgLegQIEBAB&biw=1280&bih=551&dpr=1.5#vhid=1JPp_SMWHEQDPM&vssid=mosaic',
    },
  ];

  ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(chats[index]['fotoProfil']!),
              ),
              title: Text(chats[index]['nama']!),
              subtitle: Text(chats[index]['pesan']!),
              trailing: Text(chats[index]['waktu']!),
              onTap: () {},
            ),
            const Divider(
              height: 1,
              indent: 70,
            ),
          ],
        );
      },
    );
  }
}
