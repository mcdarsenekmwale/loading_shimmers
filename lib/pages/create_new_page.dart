import 'package:flutter/material.dart';

class CreateNewPage extends StatefulWidget {
  const CreateNewPage({super.key, this.previousPage = 0});
  final int? previousPage;

  @override
  State<CreateNewPage> createState() => _CreateNewPageState();
}

class _CreateNewPageState extends State<CreateNewPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
              onPressed: (){
                Navigator.pop(context, {"currentIndex": widget.previousPage});
              },
              icon: Icon(
                Icons.close,
                color: Colors.grey.shade400,
              )
          ),
          title: Text(
              'Create New',
              style: TextStyle(
                color: Colors.grey.shade400,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 15.0
              ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert,
                  color: Colors.grey.shade400,
                )
            )
          ],
        ),
      ),
    );
  }
}
