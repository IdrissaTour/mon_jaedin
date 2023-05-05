import 'package:flutter/material.dart';
import 'package:mon_jaedin/realisation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Mon Jardin ideal'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
      int index = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: ListView.builder(
           itemCount: 2,
            itemBuilder: (context, index){
             if(index == 0){
               return DrawerHeader(
                   child: Column(
                     children: [
                       Icon(Icons.maps_home_work_outlined),
                       SizedBox(height: 10,),
                       Text("Mon Jardin", style: TextStyle(fontSize: 20),)
                     ],
                   )
               );
             }else{
               return ListTile(
                 title: Column(
                   children: [
                     TextButton(onPressed: (){
                     Navigator.pop(context);
                     },

                         child: Text("Accueil",
                           style: TextStyle(fontWeight: FontWeight.bold, ),)
                     ),
                     Divider(),
                     TextButton(onPressed: (){
                       Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx){
                         return PagedeRealisation();
                       }));
                     },
                         child: Text("Réalisations",
                           style: TextStyle(fontWeight: FontWeight.bold, ),)
                     ),
                   ],
                 ),
               );
             }
            }
        ),
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             TextButton(onPressed:null, child: Text("Accueil",
               style: TextStyle(fontSize: 60, color: Colors.greenAccent,
                   backgroundColor: Colors.white54) ,)),
             Padding(padding: EdgeInsets.only(right: 12,left: 12,bottom: 20),
             child:  TextButton(onPressed:null, child:
             Text("je suis un propriétaire d'un jardien qui vaut un hectar ,  "
                 "qui est entourer par des bois rouge dont les gens aiment passer leur "
                 "vaccances, voyages , nuit de noce etc...",
               style: TextStyle(fontSize: 18, color: Colors.black87,
                   backgroundColor: Colors.white) ,)),
             )
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/piscine 4.jpeg", ),fit: BoxFit.cover
              )
          ),

        ),

      )


    );
  }
}
