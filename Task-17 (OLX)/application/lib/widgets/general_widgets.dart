import 'package:application/classes/models.dart';
import 'package:application/utils/extensions/general_extensions.dart';
import 'package:application/utils/tools/general_tools.dart';
import 'package:flutter/material.dart';

Widget choice(
  filterList,
  generelIndex,
  bool reversedFlag,
) {
  return ListView(
    reverse: reversedFlag ? true : false,
    children: [
      for (int i = 0; i < Models.dataBase.length; i++) filterList[generelIndex]
    ],
  );
}

Widget infoProduct(bool iconFlag, toggleTopLike, int index) {
  return Column(
    children: [
      //image sec
      Container(
          height: 340,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
              "https://frankfurt.apollo.olxcdn.com/v1/files/doshzbdqo7622-UZ/image;s=1000x700",
            ),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: const Color(0xFF1ce1d7),
                    borderRadius: BorderRadius.circular(3)),
                child: Text(
                  "TOP",
                  style: Tools.boldStyle,
                ),
              ),
            ],
          )),
      //product desc sec
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 300,
                  child: Wrap(
                    children: [
                      Text(
                        Models.dataBase[index].desc,
                        style: Tools.solidStyle,
                      )
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {
                      toggleTopLike();
                    },
                    icon: Icon(iconFlag
                        ? Icons.favorite_outline
                        : Icons.favorite_rounded))
              ],
            ),
            10.height(),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(7)),
                child: Text(
                  "New",
                  style: Tools.solidStyle,
                ),
              ),
            ),
            5.height(),
            Text(
              Models.dataBase[index].price,
              style: Tools.boldStyle.copyWith(fontWeight: FontWeight.w700),
            ),
            Text(
              "Tashkent, Uzbeksitan",
              style: Tools.solidStyle.copyWith(fontSize: 14),
            ),
          ],
        ),
      )
    ],
  );
}

Widget infoProduct_second(bool iconFlag, toggleTopLike, int index) {
  return Row(
    children: [
      //image sec
      Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
              "https://frankfurt.apollo.olxcdn.com/v1/files/doshzbdqo7622-UZ/image;s=1000x700",
            ),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color(0xFF1ce1d7),
                    borderRadius: BorderRadius.circular(3)),
                child: Text(
                  "TOP",
                  style: Tools.boldStyle,
                ),
              ),
            ],
          )),
      //product desc sec
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 130,
                  child: Wrap(
                    children: [
                      Text(
                        Models.dataBase[index].desc,
                        style: Tools.solidStyle.copyWith(fontSize: 16),
                      )
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {
                      toggleTopLike();
                    },
                    icon: Icon(iconFlag
                        ? Icons.favorite_outline
                        : Icons.favorite_rounded))
              ],
            ),
            10.height(),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(7)),
                child: Text(
                  "New",
                  style: Tools.solidStyle,
                ),
              ),
            ),
            5.height(),
            Text(
              Models.dataBase[index].price,
              style: Tools.boldStyle.copyWith(fontWeight: FontWeight.w700),
            ),
            Text(
              "Tashkent, Uzbeksitan",
              style: Tools.solidStyle.copyWith(fontSize: 14),
            ),
          ],
        ),
      )
    ],
  );
}

Widget infoProductThird(bool iconFlag, Function toggleTopLike, int index) {
  return SingleChildScrollView(
    child: GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 0.5,
      children: List.generate(
        10,
        (index) => oneProductInColumn(iconFlag, toggleTopLike, index),
      ),
    ),
  );
}

Widget oneProductInColumn(iconFlag, toggleTopLike, int index) {
  return Column(
    children: [
      //image sec
      Container(
          height: 180,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
              "https://frankfurt.apollo.olxcdn.com/v1/files/doshzbdqo7622-UZ/image;s=1000x700",
            ),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Color(0xFF1ce1d7),
                    borderRadius: BorderRadius.circular(3)),
                child: Text(
                  "TOP",
                  style: Tools.boldStyle.copyWith(fontSize: 12),
                ),
              ),
            ],
          )),
      //product desc sec
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Wrap(
                    children: [
                      Text(
                        "universal electro car",
                        style: Tools.solidStyle.copyWith(fontSize: 12),
                      )
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    toggleTopLike();
                  },
                  icon: Icon(iconFlag
                      ? Icons.favorite_outline
                      : Icons.favorite_rounded),
                  iconSize: 20,
                )
              ],
            ),
            10.height(),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(7)),
                child: Text(
                  "New",
                  style: Tools.solidStyle,
                ),
              ),
            ),
            5.height(),
            Text(
              "50 000 sum",
              style: Tools.boldStyle.copyWith(fontWeight: FontWeight.w700),
            ),
            Text(
              "Tashkent, Uzbeksitan",
              style: Tools.solidStyle.copyWith(fontSize: 14),
            ),
          ],
        ),
      )
    ],
  );
}
