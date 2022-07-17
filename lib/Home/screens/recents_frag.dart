import 'package:flutter/material.dart';
import 'package:inscribe/Home/components/project_list_item.dart';
import 'package:inscribe/Home/components/search_bar.dart';

class RecentsFrag extends StatelessWidget {
  TextEditingController? searchController = TextEditingController();
 RecentsFrag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Inscribe",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),
            SearchBar(
              controller: searchController!,
              keyboardType: TextInputType.text,
              hintTitle: "Search or paste url",
            ),
             SizedBox(height: 20),
             Text("Recents"),
            SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return ProjectListItem();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
