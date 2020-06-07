import 'package:flutter/material.dart';

class ImageWithCircularBorder extends StatefulWidget {
  final ImageProvider image;
  final double imageRadius;
  final Color borderColor;
  ImageWithCircularBorder({
    @required this.imageRadius,
    @required this.borderColor,
    @required this.image,
  });

  @override
  _ImageWithCircularBorderState createState() => _ImageWithCircularBorderState();
}

class _ImageWithCircularBorderState extends State<ImageWithCircularBorder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: widget.borderColor,
          width: 1.5,
        ),
      ),
      child: CircleAvatar(
        radius: widget.imageRadius,
        backgroundImage: widget.image,
      ),
    );
  }
}
