import 'package:application/widgets/general_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

const List<String> options = ['first_class', 'second_class', 'third_class'];
String selectedOption = options.first;
bool iconFlag = true;
int generelIndex = 0;
bool reversedFlag = false;
final TextEditingController _controller = TextEditingController();

class _MainScreenState extends State<MainScreen> {
  void _showDropDown() {
    showMenu(
            context: context,
            position: const RelativeRect.fromLTRB(50, 110, 0, 0),
            items: options.map((String option) {
              return PopupMenuItem(
                value: option,
                child: Text(option),
              );
            }).toList())
        .then((value) {
      if (value != null) {
        setState(() {
          selectedOption = value;
          generelIndex = options.indexOf(value);
        });
      }
    });
  }

  String firstElement = options.first;

  void toggleTopLike() {
    setState(() {
      iconFlag = !iconFlag;
    });
  }

  void togglereReversedFlag() {
    setState(() {
      reversedFlag = !reversedFlag;
    });
  }

  @override
  Widget build(BuildContext context) {
    List filterList = [
      infoProduct(iconFlag, toggleTopLike, generelIndex),
      infoProduct_second(iconFlag, toggleTopLike, generelIndex),
      infoProductThird(iconFlag, toggleTopLike, generelIndex)
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 325,
              height: 70,
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Search"),
                    labelStyle: TextStyle(color: Colors.grey),
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: Icon(Icons.search),
                    )),
              ),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                _showDropDown();
              },
              icon: const Icon(CupertinoIcons.chevron_down_circle)),
          IconButton(
              onPressed: () {
                togglereReversedFlag();
              },
              icon: const Icon(CupertinoIcons.square_stack_fill))
        ],
        leadingWidth: 350,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: choice(filterList, generelIndex, reversedFlag)),
    );
  }
}
