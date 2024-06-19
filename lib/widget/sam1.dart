import 'package:flutter/material.dart';

class Sam extends StatefulWidget {
  const Sam({super.key});

  @override
  State<Sam> createState() => _SamState();
}

class _SamState extends State<Sam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 55, 247, 62),
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            if (index == 0) {
              return Card(
                color: const Color.fromARGB(255, 244, 225, 224),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const ListTile(
                  leading: Icon(Icons.search),
                  title: Text("Search..."),
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
                    margin: EdgeInsets.only(left: 25),
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
                    margin: EdgeInsets.only(left: 25),
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
           

            
          },
          separatorBuilder: (context, index) {
            if (index < 2) {
               return SizedBox();
            }
            else
            return Divider();
          },
          itemCount: 30),
    );
  }
}
