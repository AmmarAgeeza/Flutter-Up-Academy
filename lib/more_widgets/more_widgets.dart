import 'package:flutter/material.dart';

class MoreWidgets extends StatefulWidget {
  const MoreWidgets({super.key});

  @override
  State<MoreWidgets> createState() => _MoreWidgetsState();
}

class _MoreWidgetsState extends State<MoreWidgets> {
  List<Widget> screens = [
    const Center(child: Text('Add')),
    const Center(child: Text('Minus')),
  ];

  int currentIndex = 0;
  double val=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Widgets'),
      ),
      body:Center(child: Column(
        children: [
          Container(
            // margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(8),
            height: 100,
            width: 100,
            color: Colors.red,
            child: const Text('DAta'),
          )
        ],
      ),),
    );
  }

  Center slider() {
    return Center(
      child:Slider(
        label: 'Slider',
         min: 0,
         max: 10,
        //  divisions: 5,
        value:val,
        activeColor: Colors.blueGrey,
        onChanged: (newValue) {
          val=newValue;
          setState(() {
            print(newValue);
          });
          
        },
      )
    );
  }

  Center circleProgressIndicator() {
    return const Center(
      child: CircularProgressIndicator(
        // backgroundColor: Colors.red,
        color: Colors.deepOrange,
        // value:0.1
      ));
  }

  Scaffold bottomNavBar() {
    return Scaffold(
      //step 1
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.minimize), label: 'Minus'),
        ],
      ),
      appBar: AppBar(
        title: const Text('More Widgets'),
      ),
      //step 2 
      body: screens[currentIndex]);
  }

  DefaultTabController tabBar() {
    //tab Bar
    //1. => add DefaultTabController
    //2. => add TabBar in Bottom in appBar
    //3. => add TabBarView in body in Scafflod.
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  text: 'Chats',
                  icon: Icon(Icons.chat),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                ),
              ]),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          title: const Text(
            'More Widgets',
          ),
        ),
        body: TabBarView(
          children: [
            //screen body 1 => Chats
            screen1(),
            //Screen body 2 => Status
            Column(
              children: [stack(), stack()],
            ),
            //Screen body 3 => Calls
            const Center(child: Text('Calls')),
          ],
        ),
      ),
    );
  }

  Center screen1() {
    return Center(
        child: Column(
      children: [
        listTileWidget(),
        listTileWidget(),
        listTileWidget(),
        listTileWidget(),
      ],
    ));
  }

  Drawer drawer() {
    return Drawer(
      backgroundColor: Colors.blueGrey,
      child: Column(children: [
        //userAccount Header
        const UserAccountsDrawerHeader(
          accountName: Text('Account'),
          accountEmail: Text('Email'),
        ),
        ListTile(
          title: const Text('Home'),
          leading: const Icon(Icons.home),
          onTap: () {
            print('ListTile');
          },
        ),
      ]),
    );
  }

  SizedBox stack() {
    return SizedBox(
      height: 300,
      width: 300,
      child: Stack(
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: Image.asset(
              'assets/images/22.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Align(alignment: Alignment.topCenter, child: Text('Name')),
          const Align(alignment: Alignment.bottomCenter, child: Text('Phone')),
          const Positioned(
              bottom: 30,
              right: 100,
              child: Icon(
                Icons.phone,
                color: Colors.red,
              ))
        ],
      ),
    );
  }

  Container align() {
    return Container(
      height: 200,
      width: 200,
      color: Colors.red,
      child: const Align(alignment: Alignment.topRight, child: Text('Hello')),
    );
  }

  ListTile listTileWidget() {
    return ListTile(
      // contentPadding: EdgeInsets.zero,
      onTap: () {},
      leading: const CircleAvatar(),
      trailing: const Text('Friday'),
      title: const Text('Mohmed'),
      subtitle: const Row(children: [Icon(Icons.check), Text('How are you ?')]),
    );
  }

  Expanded listViewBuilder() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Center(child: Text('${index + 1}'));
        },
        itemCount: 5,
      ),
    );
  }
}
