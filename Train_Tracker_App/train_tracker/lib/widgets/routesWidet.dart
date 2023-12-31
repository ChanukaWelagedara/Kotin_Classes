import 'package:flutter/material.dart';
import 'package:train_tracker/colours/colours.dart';

class route extends StatefulWidget {
  final String image;
  final String RouteName;
  final int Members;

  const route({
    required this.image,
    required this.RouteName,
    required this.Members,
  });

  @override
  State<route> createState() => _routeState();
}

class _routeState extends State<route> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width / 2.3,
          height: MediaQuery.of(context).size.height / 3.5,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: primaryColor,
                offset: Offset(0, 0),
                blurRadius: 5,
                spreadRadius: -1,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(widget.image),
                radius: MediaQuery.of(context).size.width / 10,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 50),
              Text(
                widget.RouteName,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text("${widget.Members} Members"),
            ],
          ),
        ),
      ),
    );
  }
}