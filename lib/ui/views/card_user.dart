import 'package:flutter/material.dart';

class CardUser extends StatefulWidget {
  @override
  _CardUserState createState() => _CardUserState();
}

class _CardUserState extends State<CardUser> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
            height: MediaQuery.of(context).size.height * 0.35,
            child: Card(
                color: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                elevation: 8,
                child: const Center()),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
            height: MediaQuery.of(context).size.height * 0.35,
            child: Card(
                color: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                elevation: 8,
                child: const Center()),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
            height: MediaQuery.of(context).size.height * 0.35,
            child: Card(
                color: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                elevation: 8,
                child: const Center()),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
            height: MediaQuery.of(context).size.height * 0.35,
            child: Card(
                color: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                elevation: 8,
                child: const Center()),
          )
        ],
      ),
    );
  }
}
