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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Profile Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromARGB(117, 91, 101, 243),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 40,
                    width: 40,
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 200),
                  const Text(
                    'Community',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                 const Text('Learn Stock,\nEducate the World',
                 style: TextStyle(fontWeight:FontWeight.bold, fontSize: 30, color: Color.fromARGB(255, 2, 23, 41)),textAlign: TextAlign.center,
                 
                 ) 
              
                ],
              ),
             const SizedBox(height: 30),
                       Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFeceffe),
                      border: Border.all(
                        color:const Color.fromARGB(69, 0, 0, 0),
                        width: .5,
                      )
                      ),
                      height: 70,
                      width: 585,      
                       child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(width: 170),
                        const Icon(Icons.search, size: 50, color: Color.fromARGB(164, 0, 0, 0),),
                        const SizedBox(width: 20),
                        const Text('Search Something...', style: TextStyle(color: Color.fromARGB(82, 0, 0, 0)),),      
                        ],
                      ),     
                      
                    ),
                  ],
                ), 
                const SizedBox(height: 30),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFeceffe),
                      border: Border.all(
                        color:const Color.fromARGB(69, 0, 0, 0),
                        width: .5,
                      )
                      ),
                      height: 200,
                      width: 585,
          
                      padding: const EdgeInsets.all(16.0), 
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [ 
                        const Text('How to start investing investing in uStock', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color.fromARGB(158, 0, 0, 0))),
                        const SizedBox(height: 10),
                        const Text('Lemme tell you this, world of interesting is really\nreally legit, especially using uStock. Why? Becaus...', style: TextStyle( fontSize: 22, color: Color.fromARGB(76, 0, 0, 0))),
                        const SizedBox(height: 15),
          
                        Row(children: [
                                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('data:image/jpeg;base64,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')
                        ),
                        color: Colors.blue,
                      ),
                      height: 40,
                      width: 40
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('https://media1.tenor.com/m/EA-enhaBLOcAAAAC/thousand-yard-stare-staring-cat.gif')
                        ),
                        color: Colors.blue,
                      ),
                      height: 40,
                      width: 40
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('https://media1.tenor.com/m/-lJXS1PbMd8AAAAC/cat-stare-cat.gif')
                        ),
                        color: Colors.blue,
                      ),
                      height: 40,
                      width: 40
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(174, 255, 255, 255),
                        border: Border.all(
                          width: .5,
                          color: Colors.black
                        )
                      ),
                      height: 40,
                      width: 40,
                      child: const Center(child: 
                      Text('+3')
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(child: Container()),
                    const Text('Join Forum', style: TextStyle( color: Color.fromARGB(158, 2, 53, 194)),),
                    const Icon(Icons.play_arrow, color: Color.fromARGB(158, 2, 53, 194),),
                    const SizedBox(width: 15)
    
                        ],

                        ),
                        
                        
                        
                      ],) 
                    )
                     
                  ],
            
                ), 
                const SizedBox(height: 30),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFeceffe),
                      border: Border.all(
                        color:const Color.fromARGB(69, 0, 0, 0),
                        width: .5,
                      )
                      ),
                      height: 200,
                      width: 585,
          
                      padding: const EdgeInsets.all(16.0), 
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [ 
                        const Text('How to Predict the Candlestick', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color.fromARGB(158, 0, 0, 0))),
                        const SizedBox(height: 10),
                        const Text('What is Candlestick? It\'s like candle but not\nactually sweet candle, it\'s some benchmark to yo...', style: TextStyle( fontSize: 22, color: Color.fromARGB(76, 0, 0, 0))),
                        const SizedBox(height: 15),
          
                        Row(children: [
                                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('data:image/jpeg;base64,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')
                        ),
                        color: Colors.blue,
                      ),
                      height: 40,
                      width: 40
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('https://media1.tenor.com/m/EA-enhaBLOcAAAAC/thousand-yard-stare-staring-cat.gif')
                        ),
                        color: Colors.blue,
                      ),
                      height: 40,
                      width: 40
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('https://media1.tenor.com/m/-lJXS1PbMd8AAAAC/cat-stare-cat.gif')
                        ),
                        color: Colors.blue,
                      ),
                      height: 40,
                      width: 40
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(174, 255, 255, 255),
                        border: Border.all(
                          width: .5,
                          color: Colors.black
                        )
                      ),
                      height: 40,
                      width: 40,
                      child: const Center(child: 
                      Text('+3')
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(child: Container()),
                    const Text('Join Forum', style: TextStyle( color: Color.fromARGB(158, 2, 53, 194)),),
                    const Icon(Icons.play_arrow, color: Color.fromARGB(158, 2, 53, 194),),
                    const SizedBox(width: 15)
    
                        ],

                        ),
                        
                        
                        
                        
                      ],) 
                    )
                     
                  ],
                ),
                                const SizedBox(height: 30),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFeceffe),
                      border: Border.all(
                        color:const Color.fromARGB(69, 0, 0, 0),
                        width: .5,
                      )
                      ),
                      height: 200,
                      width: 585,
          
                      padding: const EdgeInsets.all(16.0), 
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [ 
                        const Text('Is Trading Safe for Newbie Investor', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color.fromARGB(158, 0, 0, 0))),
                        const SizedBox(height: 10),
                        const Text('Many people ask us about  trading in uStock,\nis trading safe for you if you\'re a newbie player in uSt...', style: TextStyle( fontSize: 22, color: Color.fromARGB(76, 0, 0, 0))),
                        const SizedBox(height: 15),
          
                        Row(children: [
                                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('data:image/jpeg;base64,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')
                        ),
                        color: Colors.blue,
                      ),
                      height: 40,
                      width: 40
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('https://media1.tenor.com/m/EA-enhaBLOcAAAAC/thousand-yard-stare-staring-cat.gif')
                        ),
                        color: Colors.blue,
                      ),
                      height: 40,
                      width: 40
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('https://media1.tenor.com/m/-lJXS1PbMd8AAAAC/cat-stare-cat.gif')
                        ),
                        color: Colors.blue,
                      ),
                      height: 40,
                      width: 40
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(174, 255, 255, 255),
                        border: Border.all(
                          width: .5,
                          color: Colors.black
                        )
                      ),
                      height: 40,
                      width: 40,
                      child: const Center(child: 
                      Text('+3')
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(child: Container()),
                    const Text('Join Forum', style: TextStyle( color: Color.fromARGB(158, 2, 53, 194)),),
                    const Icon(Icons.play_arrow, color: Color.fromARGB(158, 2, 53, 194),),
                    const SizedBox(width: 15)
    
                        ],

                        ),
                        
                        
                        
                        
                      ],) 
                    )
                     
                  ],
                )
                
                

                
          
              
            
            ],
                  ),
                ),
          )),
    );
  }
}