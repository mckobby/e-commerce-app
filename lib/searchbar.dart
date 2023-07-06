import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

TextEditingController searchQueryController = TextEditingController();

class _SearchBarState extends State<SearchBar> {
  bool folded = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(top: height * 0.08),
          child: SizedBox(
            width: width * 0.7,
            child: TextField(
              textInputAction: TextInputAction.search,
              controller: searchQueryController,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search',
                prefixIcon: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    setState(() {
                      searchQueryController.clear();
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      searchQueryController.clear();
                    });
                  },
                  icon: const Icon(
                    Icons.search,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
