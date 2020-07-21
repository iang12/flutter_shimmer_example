import 'package:flutter/material.dart';
import 'package:flutter_shimmer_example/shimer_widget.dart';

main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Shimmer',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shimmer Effect'),
        centerTitle: true,
      ),
      // backgroundColor: Colors.black,
      body: Container(
        child: isLoading
            ? ShimmerWidget()
            : ListView.builder(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    contentPadding: EdgeInsets.all(5),
                    title: Text(
                      'beautiful beach $index',
                    ),
                    subtitle: Text(
                      'subtitle',
                    ),
                    leading: Image.asset(
                      'images/beach.jpg',
                    ),
                  );
                },
              ),
      ),
    );
  }
}
