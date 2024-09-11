import 'package:flutter/material.dart';

class Walletpage extends StatelessWidget {
  const Walletpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Text('Wallet'),
      ),
    );
  }
}