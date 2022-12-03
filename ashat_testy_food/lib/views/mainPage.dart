import 'package:ashat_testy_food/views/ideaPage.dart';
import 'package:ashat_testy_food/views/primaryPage.dart';
import 'package:ashat_testy_food/views/recipesPage.dart';
import 'package:ashat_testy_food/views/toolsPage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool primary = false;
  bool recipe = false;
  bool idea = false;
  bool tools = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    togglePrimary();
  }

  void togglePrimary() {
    primary = true;
    recipe = false;
    tools = false;
    idea = false;
  }

  void toggleRecipe() {
    primary = false;
    recipe = true;
    tools = false;
    idea = false;
  }

  void toggleTools() {
    primary = false;
    recipe = false;
    tools = true;
    idea = false;
  }

  void toggleIdea() {
    primary = false;
    recipe = false;
    tools = false;
    idea = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Delicious food',
        ),
        backgroundColor: Colors.green[400],
      ),
      body: Container(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            if (primary)
              const Expanded(
                child: PrimaryPage(),
              ),
            if (recipe)
              const Expanded(
                child: RecipePage(),
              ),
            if (tools)
              const Expanded(
                child: Tools(),
              ),
            if (idea)
              const Expanded(
                child: Idea(),
              ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 70,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                child: Text(
                  "Delicious food",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
                title: const Text("Главная"),
                leading: const Icon(Icons.first_page_outlined),
                onTap: () {
                  setState(() {
                    togglePrimary();
                  });
                }),
            ListTile(
                title: const Text("Рецепты"),
                leading: const Icon(Icons.list_alt_outlined),
                onTap: () {
                  setState(() {
                    toggleRecipe();
                  });
                }),
            ListTile(
                title: const Text("Идеи"),
                leading: const Icon(Icons.lightbulb_circle_outlined),
                onTap: () {
                  setState(() {
                    toggleIdea();
                  });
                }),
            ListTile(
                title: const Text("Инструменты"),
                leading: const Icon(Icons.handyman_rounded),
                onTap: () {
                  setState(() {
                    toggleTools();
                  });
                })
          ],
        ),
      ),
    );
  }
}
