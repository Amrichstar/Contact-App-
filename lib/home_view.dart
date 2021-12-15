import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'contact_detail_view.dart';
import 'contact_model.dart';
import 'contact_view_details.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();
  final List<Map<String, String>> data = [
    {
      "name": "Macy Mcdowell",
      "phone": "434-5712",
      "email": "tempor.diam@aol.edu",
      "country": "Brazil",
      "region": "Huáběi"
    },
    {
      "name": "Carissa Ampomah",
      "phone": "1-567-743-4341",
      "email": "vel@google.com",
      "country": "Ghana",
      "region": "Madina"
    },
    {
      "name": "Bright Amoah",
      "phone": "582-3896",
      "email": "eros.proin.ultrices@hotmail.com",
      "country": "New Zealand",
      "region": "South Island"
    },
    {
      "name": "Brian Ramos",
      "phone": "674-3271",
      "email": "at.egestas@aol.couk",
      "country": "South Korea",
      "region": "Azad Kashmir"
    },
    {
      "name": "Carlos Harper",
      "phone": "1-238-113-6033",
      "email": "proin.nisl@icloud.org",
      "country": "Russian Federation",
      "region": "Guanacaste"
    },
    {
      "name": "Francis Achaw",
      "phone": "871-3241",
      "email": "non@yahoo.couk",
      "country": "Indonesia",
      "region": "Jharkhand"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          // elevation: 0,
          centerTitle: false,
          title: const Text(
            'Edith Richstar',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Center(
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/download.jpg'),
                ),
              ),
            )
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: Material(
                //elevatopm will add drop shadow
                //elevation: 18,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      hintText: 'Search by name or number',
                      prefixIcon: const Icon(Icons.search)),
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: ListView(
            controller: _scrollController,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Recent',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
              ListView.separated(
                  controller: _scrollController,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ContactDetailsView(
                              contact: Contact(
                                  country: 'Ghana',
                                  email: 'kingsley@ghanatechlab.com',
                                  name: 'Kingsley Achaw',
                                  phone: '+233 24 54 36 757',
                                  region: 'Greater Accra'));
                        }));
                      },
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/baby.jpg'),
                      ),
                      title: const Text(
                        'Jaydem',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      subtitle: const Text('+233 24 54 36 757'),
                      trailing: const IconButton(
                          onPressed: null, icon: Icon(Icons.more_horiz)),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      indent: 25,
                      thickness: 2,
                    );
                  },
                  itemCount: 3),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Contacts',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
              ListView.separated(
                  controller: _scrollController,
                  //GroupedListView<Map<String, String>, String>(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ContactDetailsView(
                              contact: Contact(
                                  country: 'Ghana',
                                  email: 'bright@ghanatechlab.com',
                                  name: 'Kingsley Achaw',
                                  phone: '+233 24 540668235',
                                  region: 'Greater Accra'));
                        }));
                      },
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/Eunice.jpg'),
                      ),
                      title: const Text(
                        'Eunice',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      subtitle: const Text('+233 24 06 68 235'),
                      trailing: const IconButton(
                          onPressed: null, icon: Icon(Icons.more_horiz)),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      indent: 25,
                      thickness: 3,
                    );
                  },
                  itemCount: 6),
            ],
          ),
        ));
  }
}
