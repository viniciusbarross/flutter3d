import 'package:flutter/material.dart';
//import 'package:webview_flutter/webview_flutter.dart';

class VectaryScreen extends StatefulWidget {
  const VectaryScreen({Key? key}) : super(key: key);

  @override
  State<VectaryScreen> createState() => _VectaryScreenState();
}

class _VectaryScreenState extends State<VectaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Vectary'),
        elevation: 0,
        actions: const [
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.share),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomBarActions(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const Expanded(
          //   child: WebView(
          //     initialUrl: 'https://app.vectary.com/p/0dLoaJYRQ8Fsg45xJytruM',
          //     javascriptMode: JavascriptMode.unrestricted,
          //   ),
          // ),
          const SizedBox(
            height: 20,
          ),
          _buildProductTitle(),
        ],
      ),
    );
  }

  Widget _buildBottomBarActions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Center(
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              )),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Center(
                    child: Text(
                      'Add to bag',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  Widget _buildProductTitle() {
    return Column(
      children: const [
        Text(
          'Sneaker',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Sneaker X',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
