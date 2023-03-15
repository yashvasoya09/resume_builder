import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List educationList = [
    "Medicine",
    "Engineering",
    "MBA",
    "Architecture",
    "Psychology",
    "Civil Services",
    "Pharmacy",
    "Law",
  ];
  String? selectionEducation;
  bool isExp = false;
  List SkillList = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Resume Builder",
          style: TextStyle(
            color: Colors.purple.shade600,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Personal Info",
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold),
              ),
              tileColor: Colors.green,
              trailing: Icon(Icons.person, color: Colors.purple),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Full Name",
                      hintStyle: TextStyle(color: Colors.green),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.purple, width: 3)),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Our Address",
                      hintStyle: TextStyle(color: Colors.green),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.purple, width: 3)),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Education Info",
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold),
              ),
              tileColor: Colors.green,
              trailing: Icon(Icons.school, color: Colors.purple),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  DropdownButton(
                    items: educationList
                        .map((e) => DropdownMenuItem(
                              child: Center(child: Text("$e",style: TextStyle(color: Colors.green.shade200),)),
                              value: e,
                            ))
                        .toList(),
                    value: selectionEducation,
                    isExpanded: true,
                    dropdownColor: Colors.purple,
                    hint: Center(child: Text("~~~Select~~~",style: TextStyle(color: Colors.green))),
                    onChanged: (value) {
                      setState(() {
                        selectionEducation = value as String;
                      });
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Experience Info",
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold),
              ),
              tileColor: Colors.green,
              trailing: Icon(Icons.work, color: Colors.purple),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ListTile(
                      title: Text("Experience",style: TextStyle(color: Colors.purple)),
                      enabled: true,
                      leading: Icon(Icons.person_add_alt),
                      tileColor: Colors.green,
                      trailing: Switch(
                        activeColor: Colors.purple,
                        value: isExp,
                        onChanged: (value) {
                          setState(() {
                            isExp = value;
                          });
                        },
                      )),
                  Visibility(
                    visible: isExp,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: SkillList[0],
                                onChanged: (value) {
                                  setState(() {
                                    SkillList[0] = value!;
                                  });
                                },
                                activeColor: Colors.purple),
                            Text("Dart Languge",style: TextStyle(color: Colors.green)),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: SkillList[1],
                                onChanged: (value) {
                                  setState(() {
                                    SkillList[1] = value!;
                                  });
                                },
                                activeColor: Colors.purple),
                            Text("Java Languge",style: TextStyle(color: Colors.green)),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: SkillList[2],
                                onChanged: (value) {
                                  setState(() {
                                    SkillList[2] = value!;
                                  });
                                },
                                activeColor: Colors.purple),
                            Text("Kotlin Languge",style: TextStyle(color: Colors.green)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
