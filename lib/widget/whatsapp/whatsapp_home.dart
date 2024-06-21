// import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hello/widget/whatsapp/chatpage.dart';
import 'package:hello/widget/whatsapp/profile.dart';

class WhatsappHomePage extends StatefulWidget {
  const WhatsappHomePage({super.key});

  @override
  State<WhatsappHomePage> createState() => _WhatsappHomePageState();
}

class _WhatsappHomePageState extends State<WhatsappHomePage> {
  int selectedindex = 0;

  List<Widget> widgets = [
    const Text("chats"),
    const Text("Updates"),
    const Text("Communitiy"),
    const Text("Calls"),
  ];

  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 42, 238, 28),
        title: const Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        // title: TextLiquidFill(
        //   text: 'Whatsapp',
        //   waveColor: Color.fromARGB(255, 215, 223, 233),
        //   boxBackgroundColor: Color.fromARGB(255, 77, 231, 105),
        //   textStyle: TextStyle(
        //     fontSize: 30.0,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.qr_code,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
          PopupMenuButton<String>(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'New group',
                  child: ListTile(
                    title: Text("New group"),
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'New broadcast',
                  child: ListTile(
                    title: Text("New broadcast"),
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'Linked devices',
                  child: ListTile(
                    title: Text("Linked devices"),
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'Starred messages',
                  child: ListTile(
                    title: Text("Starred messages"),
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'Payments',
                  child: ListTile(
                    title: Text("Payments"),
                  ),
                ),
                // const PopupMenuItem<String>(

                //   value: 'Settings',
                //   child: ListTile(

                //    contentPadding: EdgeInsets.symmetric(horizontal: 0),
                //     leading: Icon(Icons.fiber_manual_record,
                //   color: Colors.green,size:10 ,),
                //     title: Text("Settings"),
                //   ),
                // ),
                PopupMenuItem<String>(
                  value: 'Settings',
                  child: ListTile(
                    horizontalTitleGap: 0,

                    leading: const Icon(
                      Icons.fiber_manual_record,
                      color: Colors.green,
                      size: 10,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 0), // Adjust horizontal padding

                    title: const Text(
                      "Settings",
                      textAlign: TextAlign.left,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileWidget()),
                      );
                    },
                  ),
                ),
              ];
            },
            onSelected: (String value) {
              // Handle menu item selection if needed
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            if (index == 0) {
              return const ListTile(
                title: SearchBar(
                  leading: Icon(
                    Icons.search,
                  ),
                  hintText: 'Search...',
                ),
              );
            }
            if (index == 1) {
              return const SizedBox(
                height: 15,
              );
            }
            if (index == 2) {
              return Row(
                children: [
                  Container(
                    // width:35,
                    margin: const EdgeInsets.only(left: 25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 249, 222, 222)),
                    child: const Center(
                        child: Text(
                      " All ",
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                  Container(
                    // width: 67,
                    margin: const EdgeInsets.only(left: 10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.elliptical(15, 15),
                          bottomRight: Radius.elliptical(15, 15)),
                      // shape: BoxShape.circle,
                      color: Color.fromARGB(255, 249, 222, 222),
                    ),
                    child: const Center(
                      child: Text(
                        " Unread ",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 249, 222, 222)),
                    // color: const Color.fromARGB(255, 249, 222, 222)),
                    child: const Center(
                      child: Text(
                        " Groups ",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              );
            }
            if (index == 3) {
              return ListTile(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return ChatPage(name: "Ashik");
                  }),
                  );
                },
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/ashik.jpeg'),
                ),
                title: Text("Ashik"),
                subtitle: Text("enthund "),
              );
            }
            if (index == 4) {
              return const ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/akhila.jpeg'),
                ),
                title: Text("Devu"),
                subtitle: Text("vnda vnda "),
              );
            }
            if (index == 5) {
              return const ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/punnoose.jpeg'),
                ),
                title: Text("Punnoose "),
                subtitle: Text("hey koottukara "),
              );
            } else {
              return const ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/bmw_cartoon.jpeg'),
                ),
                title: Text("Akhilaa (pavam kochu)"),
                subtitle: Text("mone dineshaa  "),
              );
            }
          },
          separatorBuilder: (context, index) {
            if (index < 2) {
              return const SizedBox();
            } else {
              return const Divider();
            }
          },
          itemCount: 11),
      bottomNavigationBar: BottomNavigationBar(
        // type:BottomNavigationBarType.shifting ,

        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 42, 238, 28),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                color: Colors.white,
                size: 20,
              ),
              label: 'Messages'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.upcoming_rounded,
                color: Colors.white,
                size: 20,
              ),
              label: 'Updates'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.group_rounded,
                color: Colors.white,
                size: 20,
              ),
              label: 'Communities'),

          BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
                color: Colors.white,
              ),
              label: 'calls'),

          //     BottomNavigationBarItem(icon: Icon(Icons.call,
          //   color: Colors.white,
          //   size: 15,
          // ),
          // label: 'cal'),
        ],
        currentIndex: selectedindex,
        selectedItemColor: const Color.fromARGB(255, 15, 14, 14),
        onTap: onTapped,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 51, 253, 57),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          fill: 1,
          size: 30,
        ),
      ),
    );
  }
}
