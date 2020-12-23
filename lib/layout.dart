import 'package:flutter/material.dart';

import 'main_drawer.dart';


class LayoutPage extends StatefulWidget {
  @override
  _LayoutPageState createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            backgroundColor:Colors.green[700],
            title: Text('JOBS UAC'),
            actions:[
                    IconButton(
                        icon:Icon(Icons.account_circle),
                        onPressed:()=>{},
                    )
            ],
            
              ),
        drawer:MainDrawer(),
        body:Container(),
        bottomNavigationBar:BottomNavigationBar(
          selectedItemColor:Colors.green[700],
          selectedFontSize:17,
          currentIndex:0, 
            items: [                
                BottomNavigationBarItem(
                    icon:Icon(Icons.home,
                            color:Colors.green[700],),
                    title: Text('Accueil')
                    
                   
                ),
                 BottomNavigationBarItem(
                    icon:Icon(Icons.work,color:Colors.green[700],),
                    title: Text('Opportunites'),
                   
                ),
                 
                BottomNavigationBarItem(
                    icon:Icon(Icons.construction,color:Colors.green[700],),
                    title: Text('Trucs et astuces'),
                    backgroundColor:Colors.green
                )
            ],
        )
    );
    
  }
}
