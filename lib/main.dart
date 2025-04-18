import 'package:flutter/material.dart';
import 'card_view_above.dart';
import 'card_row.dart';
import 'card_with_textfield_and_buttons.dart';
import 'list_view_container.dart';
import 'card_air.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghapus tag debug
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardViewAbove(),
            CardRow(),
            AdditionalCard(),
            CardWithTextFieldAndButtons(controller: _controller),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'History',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 300, // Atur tinggi agar ListView bisa ditampilkan dengan baik
              child: ListViewContainer(),
            ),
          ],
        ),
      ),
    );
  }
}