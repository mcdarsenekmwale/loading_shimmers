import 'package:flutter/material.dart';
import 'package:loading_shimmers/helpers/page_switch_handler.dart';
import 'package:loading_shimmers/pages/create_new_page.dart';
import 'package:loading_shimmers/widgets/bottom_navigation_app_bar.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin{

  //keys
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final PageSwitchHandler pageHandler = PageSwitchHandler();
  int currentIndex = 0;

  late Animation<Offset> position;

  switchPage(v) async{
    try{
      int prev = currentIndex;
      currentIndex = v;
      if(currentIndex == 2){
        final result = await Navigator.push(context, MaterialPageRoute(
            builder: (_)=>CreateNewPage(
              previousPage: prev,
            )
        ));
        currentIndex = result['currentIndex'];
      }
      setState(() {
      });
    }
    catch(e){
      rethrow;
    }
  }

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Container(
          height: size.height,
          width: size.width,
          padding: const EdgeInsets.only(
            top: 10.0,
          ),
          child:  Column(
            children: [
              Expanded(
                child: PageStorage(
                    bucket: pageHandler.bucket!,
                    child: pageHandler.pages[currentIndex]
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationAppBar(
          currentIndex: currentIndex,
          onSelect:switchPage
      )
    );
  }
}
