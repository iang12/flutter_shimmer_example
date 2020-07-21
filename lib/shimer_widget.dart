import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerWidth = 220.0;
    double containerHeight = 10.0;
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300],
          highlightColor: Colors.white,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: 80.0,
                  color: Colors.grey,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: containerHeight,
                      width: containerWidth,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      height: containerHeight,
                      width: containerWidth,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      height: containerHeight,
                      width: containerWidth * 0.75,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 5.0),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
