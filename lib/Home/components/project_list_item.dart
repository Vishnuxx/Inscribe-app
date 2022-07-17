import 'package:flutter/material.dart';

class ProjectListItem extends StatelessWidget {
  const ProjectListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: double.infinity,
        //color: Color.fromARGB(66, 188, 188, 188),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Container(
              height: double.infinity,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                color: Colors.black,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Text("Title",) ,
                Text("Description")
              ],),
            )
          ]),
        ));
  }
}
