import 'package:flutter/material.dart';

class contactDetailsView extends StatelessWidget {
  const contactDetailsView ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme:const IconThemeData(color: Colors.black),
             backgroundColor: Colors.white,
               title: const Text(
                'contacts',
                  style: TextStyle(color: Colors.black, fontSize:24 ),
      ),
                       actions: [Icon(Icons.more_vert)],
                        bottom: PreferredSize(preferredSize:Size.fromHeight(200),child:
                          Column(children: [CircleAvatar(radius: 50,
                             backgroundImage:NetworkImage('https://unsplash.com/photos/IILLArfPRog') 
         ,)
                                SizedBox(height: 18,
         ),
                                   Text(
                                    "lordia odame",
                                       style: TextStyle(fontSize: 20,),
           );
                                           SizedBox(
                                             height:5,
           )
                                                Text(
                                                 'Accra Ghana',
                                                    style: TextStyle(fontSize:16),
             ),
                                                       SizedBox(
                                                             height: 18,
                   )
               ],
              ),
             )
            ),
                                          body:ListView(children: [Container(child: Column(children: [ListTile(title: Text('Mobile'),
                                           subtitle: Text('+0233549139229'),
                                             trailing: Row(
                                               children: [Icon(Icons.message),
         ],
            ),
            ),       
          ]
        ),
      ),
    ],
  ) ,
      
),