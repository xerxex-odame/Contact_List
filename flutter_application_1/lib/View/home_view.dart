import 'package:flutter/material.dart';
import 'package:groupedList\grouped_List.dart';

class HomeView  extends StatelessWidget {
  //const HomeView ({ Key? key }) : super(key: key);

  //final ScrollController scrollController =scrollController
  
  
  final List<Map<String, String>> data = [
      {   "name": "Reagan Mcknight",
       "phone": "1-565-827-8982",
       "email": "nonummy.ac@outlook.couk",
       "country": "Pakistan",
       "region": "Pays de la Loire"
     },
     {
      "name": "Macy Mcdowell",
       "phone": "434-5712",
       "email": "tempor.diam@aol.edu",
       "country": "Brazil",
       "region": "Huáběi"
     },
     {
       "name": "Carissa Savage",
       "phone": "1-567-743-4341",
       "email": "vel@google.com",
       "country": "India",
       "region": "Loreto"
     },
     {
       "name": "Bruce Cannon",
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
      "name": "Britanney Dorsey",
      "phone": "871-3241",
      "email": "non@yahoo.couk",
      "country": "Indonesia",
      "region": "Jharkhand"
    },
    {
      "name": "William Ortiz",
      "phone": "1-412-819-7163",
      "email": "molestie.in@yahoo.ca",
      "country": "Vietnam",
      "region": "North Island"
    },
    {
      "name": "Shellie Merrill",
      "phone": "1-241-690-5206",
      "email": "non@google.couk",
      "country": "Turkey",
      "region": "Gorontalo"
    },
    {
      "name": "Clinton Mosley",
      "phone": "1-768-578-0868",
      "email": "sagittis.augue@google.edu",
      "country": "Chile",
      "region": "South Chungcheong"
    },
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation:0,
         centerTitle:  false,
          title: const Text(
          'My contact',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
             ),
                    actions: [Padding(
                    padding: const EdgeInsets.only(right: 15),
                   child: CircleAvatar(backgroundImage: NetworkImage('https://unsplash.com/photos/WahZHKM5nnY '),
                ),
              ),
            ],
                  bottom: PreferredSize(
                  preferredSize:Size.fromHeight(80),
                   child: TextField(
                 decoration: InputDecoration(
                 border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                
                ),
                hintText: 'Search for name',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          
        ),
      ),
      body: ListView(
        children:  [
           const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'recent',
              style: TextStyle(fontSize:20),
              ),
          ),
          ListView.separated(
            shrinkWrap: true,
                itemBuilder: (context,index){return const ListTile
                (leading: CircleAvatar(),
               title: Text("Cindy Amoah"),
              subtitle:Text('0549139229'),
             trailing: IconButton(onPressed: null,
            icon: Icon(Icons.more_horiz),
            ),

            );
            }, separatorBuilder:(context,index){
              return const Divider(
                indent: 25,
                thickness: 2,
              );
            },
            
            
             itemCount:3,
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(
                 'contacts',
                 style: TextStyle(fontSize: 20),
                 ),
             ),
             GroupedListView<Map<String, String>, String>(
              shrinkWrap: true,
              elements: data,
              groupBy: (element) => element['name'].toString().substring(0, 1),
              groupSeparatorBuilder: (String groupByValue) => SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    groupByValue.substring(0, 1),
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
              ),
              itemBuilder: (context, Map<String, String> element) {
                // Contact contact = Contact.fromJson(element);
                return Column(
                  children: [
                    ListTile(
                      // onTap: null,
                      onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                           return ContactDetailsView(
                               // contact: contact,
                               );
                         }
                         )
                         );
                      },
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/person_1.png'),
                      ),
                      title: Text(
                        '${element['name']}',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text('${element['phone']}'),
                      trailing: const IconButton(
                          onPressed: null, icon: Icon(Icons.more_horiz)),
                    ),
                    const Divider(
                      indent: 25,
                      thickness: 2,
                    )
                  ],
                );
              },
              itemComparator: (item1, item2) =>
                  item1['name']!.compareTo(item2['name']!), // optional
              useStickyGroupSeparators: true, // optional
              floatingHeader: true, // optional
              order: GroupedListOrder.ASC, // optional
            )
               
             
        ],
      ),
      floatingActionButton: const FloatingActionButton(onPressed: null,
      child: Icon(Icons.add),
      
      ),
      
    );
  }
}