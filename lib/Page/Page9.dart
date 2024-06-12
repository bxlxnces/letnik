import 'package:flutter/material.dart';
import 'package:rossecond/Page/Page10.dart';

class Pagenine extends StatelessWidget {
  const Pagenine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Import Images'),
        ),
        body: Column(
          children: [
            const Expanded(
              child: ImageWidget(),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Pageten()),
                );
              },
              icon: const Icon(Icons.web),
              tooltip: 'NextPage',
            ),
          ],
        ),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String assetNamePath = 'assets/images/bali.jpg';
    //final String assetNameSvg = 'assets/subscribe.svg';
    // final String assetNameUrl = 'https://fffuuu.net/Upload/Images/ved_tak_.png';

    AssetImage imageFromAssetImage = AssetImage(assetNamePath);
    // Image imageFromAsset = Image.asset(assetNameSvg, fit: BoxFit.cover);

    // Image imageFromNetwork = Image.network(assetNameUrl);

    // Image changedImage = Image(
    //   image: imageFromNetwork.image,
    //   color: Colors.green,
    //   colorBlendMode: BlendMode.color,
    // );

    return Container(
      constraints: const BoxConstraints.expand(height: double.infinity),
      child: Image(image: imageFromAssetImage, fit: BoxFit.cover),
    );
  }
}
