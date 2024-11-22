import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'WhatsApp',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.teal,
              bottom: const TabBar(
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Chats',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Status',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Calls',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              actions: [
                const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                PopupMenuButton(
                  menuPadding: EdgeInsets.only(right: 30),
                    icon: Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white,
                    ),
                    itemBuilder: (context) => [
                          PopupMenuItem(value: 1, child: Text("New Group")),
                          PopupMenuItem(value: 2, child: Text("Settings")),
                          PopupMenuItem(value: 3, child: Text("Logout")),
                        ]),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            body: TabBarView(children: [
              Center(
                  child: Icon(
                Icons.camera_alt,
                color: Colors.teal,
              )),
              ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1484515991647-c5760fcecfc7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fG1hbnxlbnwwfHwwfHx8MA%3D%3D"),
                      ),
                      title: Text("John Wick"),
                      subtitle: Text("Samantha: Hey There, How's everyt..."),
                      trailing: Text("6:48pm"),
                    );
                  }),
              ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    if(index==0){
                      return Column(
                        children: [
                          ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.teal,
                                    width: 2,
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://plus.unsplash.com/premium_photo-1682096252599-e8536cd97d2b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                                ),
                              ),
                              title: Text("My Status",style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text("Tap to add Status")
                          ),
                          Container(
                            height:30,
                            width:MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(color: Colors.grey[350]),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Recent Updates",style: TextStyle(color: Colors.black),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                    else{
                      return ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.teal,
                                width: 2,
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1484515991647-c5760fcecfc7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fG1hbnxlbnwwfHwwfHx8MA%3D%3D"),
                            ),
                          ),
                          title: Text("John Wick"),
                          subtitle: Text("22 mins ago")
                      );
                    }

                  }),
              ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1484515991647-c5760fcecfc7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fG1hbnxlbnwwfHwwfHx8MA%3D%3D"),
                      ),
                      title: Text("John Wick"),
                      subtitle: Row(
                        children: [
                          Icon(
                            CupertinoIcons.arrow_down_right,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("23 July 6:45pm")
                        ],
                      ),
                      trailing: Icon(
                        Icons.call,
                        color: Colors.teal,
                      ),
                    );
                  })
            ]),
          ),
        ));
  }
}
