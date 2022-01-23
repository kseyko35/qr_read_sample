import 'package:flutter/material.dart';

import '../qr_page.dart';

class CameraPage extends StatelessWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const QRpage(),
            ),
          );
        },
        child: const Text('Open Camera to Read QR code'),
      ),
    );
  }
}
