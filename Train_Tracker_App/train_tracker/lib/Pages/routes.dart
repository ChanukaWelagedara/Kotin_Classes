import 'package:flutter/material.dart';
import 'package:train_tracker/widgets/routesWidet.dart';
import 'package:train_tracker/widgets/routesWidjetlist.dart';
import 'package:train_tracker/colours/colours.dart';

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  _RoutesState createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'In The Routes',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: [
          // Second row: Search bar
          SearchAnchor(
            builder: (BuildContext context, SearchController controller) {
              return SearchBar(
                controller: controller,
                padding: const MaterialStatePropertyAll<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 32.0),
                ),
                onChanged: (query) {
                  // Your logic when the search bar content changes
                },
                onTap: () {
                  controller.openView();
                },
                leading: const Icon(Icons.search),
                trailing: <Widget>[
                  Tooltip(
                    message: 'Change brightness mode',
                    child: IconButton(
                      onPressed: () {
                        // Your existing logic to change brightness mode
                      },
                      icon: const Icon(Icons.wb_sunny_outlined),
                      selectedIcon: const Icon(Icons.brightness_2_outlined),
                    ),
                  )
                ],
              );
            },
            suggestionsBuilder: (BuildContext context, SearchController controller) {
              return List<ListTile>.generate(5, (int index) {
                final String item = 'item $index';
                return ListTile(
                  title: Text(item),
                  onTap: () {
                    // Your logic when a suggestion is tapped
                    controller.closeView(item);
                  },
                );
              });
            },
          ),
          // Third row: List view
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Specify the number of items in the list
              itemBuilder: (context, index) {
                return Container(
                  width: 150, // Adjust the width as needed
                  child: const RouteWidget(
                    // Assuming RouteWidget is a widget class you've defined
                    image: "assets/avatar.png",
                    routeName: "Kandy to Galle",
                    members: 20,
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Your Recent Routes...',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Color.fromARGB(255, 37, 146, 235),
              ),
            ),
          ),
          // Fourth row: Another list view (scroll horizontally)
          SizedBox(
            height: 300, // Adjust the height as needed
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  10,
                  (index) => const SizedBox(
                    width: 180, // Adjust the width as needed
                    child: route(
                      image: "assets/avatar.png",
                      RouteName: "Kandy to Galle",
                      Members: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
