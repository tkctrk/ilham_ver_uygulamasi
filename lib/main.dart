import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AppBar(
        title: const Text("İlham Ver"),
      ),
    );
  }
}
class _MyHomePageState extends StatefulWidget {
  const _MyHomePageState({super.key});

  @override
  State<_MyHomePageState> createState() => _MyHomePageStateState();
}

class _MyHomePageStateState extends State<_MyHomePageState> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYuksekligi=ekranBilgisi.size.height;
    final double ekranGenisligi=ekranBilgisi.size.width;
    return  Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top:ekranYuksekligi/100,bottom: ekranGenisligi/100),
            child: SizedBox(
              width: ekranGenisligi/4,
                child: Image.asset("resimler/ilham-gencer.jpg")
            ),
          ),
          Text("İlham Gencer",
           style: TextStyle(
               color: Colors.red,
             fontWeight: FontWeight.bold,
             fontSize: ekranGenisligi/25,
           ),
         ),
         Spacer(),
         Padding(
           padding:  EdgeInsets.only(right: ekranYuksekligi/100,left: ekranGenisligi/100),
           child: Center(
               child:  Text(
                   "Dünyayı değiştirecek insanlar,onu değiştirebileceklerini düşünecek kadar çılgın olanlardır.",
                 style: TextStyle(
                     color: Colors.blue,
                   fontWeight: FontWeight.bold,
                   fontSize: ekranGenisligi/25,
                 ),
               ),

           ),
         ),
           Spacer(),
           Padding(
             padding:  EdgeInsets.only(bottom: ekranYuksekligi/100),
             child: SizedBox(
               width: ekranGenisligi/2,
               height: ekranYuksekligi/15,
               child: ElevatedButton(
                child: Text("İlham Ver",style: TextStyle(
                  fontSize: ekranGenisligi/25,
                ),
                ),
                onPressed: (){
                  print("İlham verildi");
                },

                         ),
             ),
           ),
        ],
      ),
    );
  }
}



  
