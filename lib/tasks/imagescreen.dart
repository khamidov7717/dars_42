import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Loading')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 100,
        itemBuilder: (context, index) {
          return Image.network(
            "https://avatars.mds.yandex.net/i?id=2a22d58d3db4aae1f1a69ff1631ec543_l-5208943-images-thumbs&n=13",
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Image.asset('assets/image2.jpg');
            },
            errorBuilder: (context, child, loadingProgress) {
              return Image.asset('assets/image2.jpg');
            },
          );
        },
      ),
    );
  }
}
