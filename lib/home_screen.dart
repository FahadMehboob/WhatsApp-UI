import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp UI'),
          centerTitle: false,
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('Chats'),
            ),
            Tab(
              child: Text('Status'),
            ),
            Tab(
              child: Text('Calls'),
            ),
          ]),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) => const [
                PopupMenuItem(
                  value: '1',
                  child: Text('New group'),
                ),
                PopupMenuItem(
                  value: '2',
                  child: Text('New broadcast'),
                ),
                PopupMenuItem(
                  value: '3',
                  child: Text('Linked devices'),
                ),
                PopupMenuItem(
                  value: '4',
                  child: Text('Starred messages'),
                ),
                PopupMenuItem(
                  value: '5',
                  child: Text('Settings'),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(children: [
          const Center(
            child: Icon(Icons.camera_alt),
          ),
          ListView.builder(
            itemCount: 100,
            itemBuilder: ((context, index) => ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/2787341/pexels-photo-2787341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: const Text('Alexa'),
                  subtitle: const Text("Why you can't pick my calls?"),
                  trailing: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("7:30 AM"),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.teal,
                            ),
                            width: 40,
                            height: 16,
                            child: const Center(
                              child: Text('131+'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ),
          ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.teal),
                          shape: BoxShape.circle,
                        ),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/715546/pexels-photo-715546.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              child: Icon(
                                Icons.add,
                                size: 20,
                              ),
                              radius: 10,
                            ),
                          ),
                        ),
                      ),
                      title: const Text('My Status'),
                      subtitle: const Text("Tap to add status update"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text("Recent updates"),
                    )
                  ],
                );
              } else {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.teal),
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/715546/pexels-photo-715546.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                  ),
                  title: const Text('Steve'),
                  subtitle: const Text("Today, 10:45 AM"),
                );
              }
            },
          ),
          ListView.builder(
            itemCount: 100,
            itemBuilder: ((context, index) => ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/2787341/pexels-photo-2787341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: const Text('Ellyse Perry'),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: const [
                        Icon(
                            size: 20, color: Colors.green, Icons.call_received),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text('Today, 8:00 PM'),
                        ),
                      ],
                    ),
                  ),
                  trailing: Icon(
                    color: Colors.green,
                    index % 2 == 0 ? (Icons.call) : (Icons.video_call),
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
