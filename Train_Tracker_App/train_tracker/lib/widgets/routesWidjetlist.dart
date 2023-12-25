import 'package:flutter/material.dart';
import 'package:train_tracker/colours/colours.dart';
class RouteWidget extends StatefulWidget {
  final String image;
  final String routeName;
  final int members;

  const RouteWidget({
    Key? key,
    required this.image,
    required this.routeName,
    required this.members,
  }) : super(key: key);

  @override
  State<RouteWidget> createState() => _RouteWidgetState();
}

class _RouteWidgetState extends State<RouteWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tap action here
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width / 5.3,
          height: MediaQuery.of(context).size.height / 12.5,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                color: primaryColor,
                offset: Offset(0, 0),
                blurRadius: 2,
                spreadRadius: -1,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(widget.image),
                  radius: MediaQuery.of(context).size.width / 20,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.routeName,
                      maxLines: 2,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "${widget.members} Members",
                      textAlign: TextAlign.left,
                      selectionColor: Colors.blueGrey,
                      // Additional styling if needed
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.message),
                color: Colors.blueAccent,
                onPressed: () {
                  // Handle message icon tap action here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}