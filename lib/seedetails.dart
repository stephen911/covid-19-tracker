import 'package:covid_19/internetobject.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'alert.dart';
import 'main.dart';
import 'update.dart';
import 'package:flutter/src/material/tabs.dart';

class SeeDetails extends StatefulWidget {
  @override
  _SeeDetailsState createState() => _SeeDetailsState();
}

class _SeeDetailsState extends State<SeeDetails> {
  final controller = ScrollController();
  double offset = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(onScroll);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void onScroll() {
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }

  void click() {}
  final SnackBar snackBar =
      const SnackBar(content: Text("Apps button clicked"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.apps),
              tooltip: "show apps",
              onPressed: () {
                print("Apps");
              },
            ),
            IconButton(
                icon: const Icon(Icons.add_a_photo),
                tooltip: "Select a picture",
                onPressed: () {
                  //Scaffold.of(context).showSnackBar(snackBar);
                }),
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: "Search",
              onPressed: () {
                print("Search");
              },
            ),
            IconButton(
                icon: const Icon(Icons.info),
                tooltip: "Help",
                onPressed: () {
                  print("Information");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LAWidget()));
                })
          ],
          title: Text("See Deetails"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  child: Text(
                    "Menu",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  )),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home, color: Colors.blue),
                onTap: () {
                  print("home");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
              ListTile(
                  title: Text("Mail"),
                  leading: Icon(Icons.mail, color: Colors.blue),
                  onTap: () {
                    print("mail");
                    Navigator.pop(context);
                  }),
              ListTile(
                  title: Text("Chrome Cast"),
                  leading: Icon(Icons.cast, color: Colors.blue),
                  onTap: () {
                    print("mail");
                    Navigator.pop(context);
                  }),
              ListTile(
                  title: Text("Send Us a message"),
                  leading: Icon(Icons.message, color: Colors.blue),
                  onTap: () {
                    print("message");
                    Navigator.pop(context);
                  }),
              ListTile(
                  title: Text("Call Us"),
                  leading: Icon(Icons.call, color: Colors.blue),
                  onTap: () {
                    print("Call Made");
                    Navigator.pop(context);
                  }),
              ListTile(
                  title: Text("Wrist Wear"),
                  leading: Icon(Icons.watch, color: Colors.blue),
                  onTap: () {
                    print("Watch");
                    Navigator.pop(context);
                  }),
              ListTile(
                  title: Text("Account"),
                  leading: Icon(Icons.person, color: Colors.blue),
                  onTap: () {
                    print("Account");
                    Navigator.pop(context);
                  }),
              ListTile(
                  title: Text("people"),
                  leading: Icon(Icons.people, color: Colors.blue),
                  onTap: () {
                    print("people");
                    Navigator.pop(context);
                  }),
              ListTile(
                  title: Text("Add a Phote"),
                  leading: Icon(Icons.add_a_photo, color: Colors.blue),
                  onTap: () {
                    print("alarm");
                    Navigator.pop(context);
                  }),
              ListTile(
                  title: Text("Alarm"),
                  leading: Icon(Icons.alarm, color: Colors.blue),
                  onTap: () {
                    print("Alarm");
                    Navigator.pop(context);
                  }),
              ListTile(
                  title: Text("Favorite"),
                  leading: Icon(Icons.favorite, color: Colors.blue),
                  onTap: () {
                    print("favorite");
                    Navigator.pop(context);
                  }),
              ListTile(
                  title: Text("Close"),
                  leading: Icon(Icons.exit_to_app, color: Colors.blue),
                  onTap: () {
                    print("add peeople");
                    Navigator.pop(context);
                  })
            ],
          ),
        ),
        body: SingleChildScrollView(
          controller: controller,
          child: Container(
            child: Column(children: <Widget>[
              Text(
                "See Detials",
                style: TextStyle(
                    color: Colors.lightGreen,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              Text("This is the corona detailed page"),
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              //   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              //   height: 60,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(25),
              //     border: Border.all(color: Color(0xFFE5E5E5)),
              //   ),
              // ),
              Wrap(children: <Widget>[
                // Text(
                //   "This a row",
                //   style: TextStyle(
                //       color: Colors.blue,
                //       fontFamily: "arial",
                //       fontSize: 20,
                //       backgroundColor: Colors.lightBlue),
                // ),
                // Expanded(child: Text("This is also a row")),
                // Text("I am also a row"),

                GestureDetector(
                  child: Card(
                    title: "I am new",
                    id: 23,
                    image: "assets/images/wear_mask.png",
                  ),
                  onTap: () {
                    print("Pressed");
                  },
                ),
                GestureDetector(
                  child: Card(
                    title: "I am new",
                    id: 23,
                    image: "assets/images/wear_mask.png",
                  ),
                  onTap: () {
                    print("Clicked");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => InternetObject()));
                  },
                ),
                GestureDetector(
                  child: Card(
                    title: "I am new",
                    id: 23,
                    image: "assets/images/wear_mask.png",
                  ),
                  onTap: () {
                    print("Pressed");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SeeTabs()));
                  },
                ),
                GestureDetector(
                  child: Card(
                    title: "I am new",
                    id: 23,
                    image: "assets/images/wear_mask.png",
                  ),
                  onTap: () {
                    print("Clicked");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Update()));
                  },
                ),
                Info(
                    image: "assets/images/wear_mask.png",
                    info: "The quick brown fox jumps over the lazy dog."),
                Info(
                    image: "assets/images/wear_mask.png",
                    info: "The quick brown fox jumps over the lazy dog."),
                Info(
                    image: "assets/images/wear_mask.png",
                    info: "The quick brown fox jumps over the lazy dog.")

                //FloatingActionButton(onPressed: (){print("float");},)

                // Container(
                //   margin: EdgeInsets.all(20),
                //   padding: EdgeInsets.all(30),
                //   width: double.infinity,
                //   height: 30,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(25),
                //       boxShadow: [
                //         BoxShadow(
                //           offset: Offset(0, 4),
                //           blurRadius: 30,
                //           color: Colors.lightBlue
                //         ),
                //       ]),
                //   child: Text("I am a decorated box"),
                // )
              ]),
            ]),
          ),
        ));
  }
}

class Box extends StatelessWidget {
  final String name;
  const Box({Key key, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(10),
          color: Colors.blue,
          child: Row(
            children: <Widget>[
              Text(
                this.name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    fontStyle: FontStyle.italic),
              ),
            ],
          )),
      onTap: () {
        print("You just pressed the bottum");
      },
    );
  }
}

class Card extends StatelessWidget {
  final String title;
  final int id;
  final String image;
  const Card({Key key, this.title, this.id, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 195,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      //color: Colors.green,
      width: size.width / 2 - 20,
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(25)),
      child: Column(children: <Widget>[
        Text(this.title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
        Text(this.id.toString()),
        Image.asset(this.image, height: 50),
        Wrap(children: <Widget>[
          Text("hello i am truly grateful for your coperations",
              style: TextStyle(color: Colors.white)),
          SvgPicture.asset("assets/icons/forward.svg"),
        ])
      ]),
    );
  }
}

class Info extends StatelessWidget {
  final String image;
  final String info;
  const Info({Key key, this.image, this.info}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        height: 80,
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(children: <Widget>[
          Image.asset(
            this.image,
            height: 50,
          ),
          Text(this.info,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ]));
  }
}

class SeeTabs extends StatefulWidget {
  @override
  _SeeTabsState createState() => _SeeTabsState();
}

class _SeeTabsState extends State<SeeTabs> {
  final List<IconData> _icons = const [
    Icons.home,
    Icons.ondemand_video,
    Icons.menu
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
        length: _icons.length,
        child: Scaffold(
            appBar: AppBar(title: Text("hello")),
            body: IndexedStack(
              index: _selectedIndex,
              children: <Widget>[
                Scaffold(),
                Scaffold(),
                Scaffold(),
              ],
            ),
            bottomNavigationBar: Container(
              padding: const EdgeInsets.only(
                bottom: 12.0,
              ),
            color: Colors.white, child: CustomTabBar(icons: _icons, selectedIndex: _selectedIndex, onTap: (index) => setState(() => _selectedIndex = index),))));
  }
}

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isBottomIndicator;

  const CustomTabBar({
    Key key,
    @required this.icons,
    @required this.selectedIndex,
    @required this.onTap,
    this.isBottomIndicator = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: isBottomIndicator
            ? Border(
                bottom: BorderSide(
                  color: Colors.blue,
                  width: 3.0,
                ),
              )
            : Border(
                top: BorderSide(
                  color: Colors.blue,
                  width: 3.0,
                ),
              ),
      ),
      tabs: icons
          .asMap()
          .map((i, e) => MapEntry(
                i,
                Tab(
                  icon: Icon(
                    e,
                    color: i == selectedIndex
                        ? Colors.blue
                        : Colors.black45,
                    size: 30.0,
                  ),
                ),
              ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
