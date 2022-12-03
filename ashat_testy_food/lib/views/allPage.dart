import 'package:flutter/material.dart';

class AllPages extends StatefulWidget {
  const AllPages({Key? key}) : super(key: key);

  @override
  State<AllPages> createState() => _AllPagesState();
}

class _AllPagesState extends State<AllPages> {
  @override
  Widget build(BuildContext context) {
    final arg = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text('${arg['name']}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (arg['type'] == 'rec') recept(arg),
            if (arg['type'] == 'idea') idea(arg),
            if (arg['type'] == 'tools') idea(arg),
          ],
        ),
      ),
    );
  }
}

Container idea(Map<String, dynamic> arg) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              child: Text(
                arg['name'],
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Ink.image(
              image: NetworkImage(
                arg['img'],
              ),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4),
                BlendMode.darken,
              ),
              fit: BoxFit.cover,
              width: double.infinity,
              height: 180,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            children: [
              Text(arg['subtitle']),
              SizedBox(
                height: 20,
              ),
              Text(arg['desc']),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Container recept(Map<String, dynamic> arg) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              child: Text(
                arg['name'],
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Ink.image(
              image: NetworkImage(
                arg['img'],
              ),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4),
                BlendMode.darken,
              ),
              fit: BoxFit.cover,
              width: double.infinity,
              height: 180,
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListTile(
                title: Text('${arg['time']} минут'),
                leading: Icon(Icons.av_timer_rounded),
                minLeadingWidth: 0,
                horizontalTitleGap: 10,
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text('${arg['stars']} звезд'),
                leading: Icon(
                  Icons.star,
                  color: Colors.green,
                ),
                minLeadingWidth: 0,
                horizontalTitleGap: 10,
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text('${arg['sized']} порции'),
                leading: Icon(
                  Icons.spoke_rounded,
                  color: Colors.amber,
                ),
                minLeadingWidth: 0,
                horizontalTitleGap: 10,
              ),
            ),
          ],
        ),
        Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              children: [
                Text(arg['desc']),
                SizedBox(
                  height: 20,
                ),
                Text(arg['sos']),
                SizedBox(
                  height: 20,
                ),
                Text(arg['process']),
                SizedBox(
                  height: 20,
                ),
              ],
            )),
      ],
    ),
  );
}
