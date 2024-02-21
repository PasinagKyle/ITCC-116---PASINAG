import 'package:flutter/material.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

      body: SafeArea(
        child:
        Padding(
          padding: const EdgeInsets.all(18),
        child: Column(
          children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxASEBAQDxAQDw8QEBAPDw8PDw8PDQ0NFRIWFhURFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFQ8QFysdFR0rLS0tKy0tLS0tLS0tLS0tLTcrNy0tLS0tLTc3LS0tLS0tLS03LS0tLS0rKysrKysrK//AABEIALcBEwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAEAAIDBQYBBwj/xAAvEAACAgIBAwMDAwUAAwEAAAAAAQIDBBEhBRIxIkFhBhNRFHGBJDJCkaEVI2IH/8QAGQEAAwEBAQAAAAAAAAAAAAAAAQIDAAQF/8QAHxEBAQEBAAMBAAMBAAAAAAAAAAECEQMSITETQWFR/9oADAMBAAIRAxEAPwClT0QZ9nAyFpBmXcMt/TZ/Qru0OpyeStsvOU28k7+q1pYXaKXrHUG5dqJb8xKH8FLjvvn3MpE9NB0it+WzUY+TqJlsPK1wF2dSivTvkWhF1dl8+Q7Au2ZJZO9PfuaLpdmkif3p2oxZPRP9/QBiXcDrrB5U9RbY2Zp+QnLkrFr3M5TfyWNOSEOG5vSdxjZH+6Pn9g3Bufat+RYubzqXh/kdkxUeV4GlJYklcSdJ6g3dGKf7lWspbkvgG+nsn+qZfOewn49J+4gG3I9RH916BXJtiTxn6to2k0Wiuhxy2csyvZMFx/wOrNzS9xryI/kq1Nv3J62gfxt7D43J+49TBoJD0TsNNJ9iZEpMfsHB9ijIcQS8ksWAXWITYtGZzYmzjQtBYtnTmhGK+bo4z9mmRvGk9por6siafDYVDJs3zyPKrFVm1djaB1JFhnUTlttFX7i8Odl2Pt0EdPjqO/cElJMKxpcaGynpP+o0B2Sbeya2iTIIRfgxYssW3SSNLgZHpRk61rRedNkJpWRr+m3bQXcylwr1FotI2qQjcRQnyH1zeiqs4YbVZwhpQ4Id7TQXZl7jplNkWDHkceQ9D1K3M7Zy17jPpu/+sS3/AHFRmX+t6Zc/RuL32/clx2+GdfhqW49OUeBjXuR493HJDlX8MJEOZmPfah1c2V0J90wzuGgDYWE9dpXwmEVSBplpVMJiV9MgyuRDcaJ9DZRfsdjIeROE+/p9svIVX4A+oUbW15RDgXvwxudC3ixjLk7KXIOp+onkCwZpIhaFDwOFPJ00R0Rm4+Wu3kKoegKOfXJfJPh5te9SYYpwXa01ozvVKu1to2EaqpLiS/2V3UOlOUXrTGC9Y2FxPC1rwD24s4yaa9zkm/A0LV/0zKUuJFjPDW+EZLEtammbfpdinFNi02FdlY3byhuPl9vD4L22mO/V4S2UHUHXKXo9gHvF1h5q15LbGyzH48X7MsKs7s8guQ61ErNnIZOikp6uvcneRFraZpA6srsjYPZdwCxs+SPItGk+ltC5du5ce7PQPpOjsqjvzLR5tXZ3XQj53JI9Z6dR2xh8RWzqx8Q1V13KMeQLKs9ILmZjTGWZW4GDrnT5blIO2VnSZ7cg/uGGRPGRNCYImSxkLaFixotDK7CorsCq7CdBawmEQmVddrCqLdk7BlFS5TK6qvUixrkD5MdPYM/ra/EEJ/8AsC7JFbhtuTYVZLbQ2oTNH1PhDpT0Qxlwck9k+LeyT76EQdiEb1H2fJH6f8M7XHnnyRRvcQmEYyW98gdvqnr7l4mwmnLtS0pP/ZWfdcRLLb8Bg2QVkUTb3vYLbhSCac1+513bHlSueqz9LLyXvR83tWmDxi37ELrcdmsLc8aHKzU4Pn2KDE13P5Bsi6Wtb9x2NPQJklq8gkkRKXfPS8Ff+p9gzDuUXt+RuF6OeD7jYdyfwEVZifArZLRuN11W/JFfcCZF+gK7Jeh85La0n0dQrcpe6i9nrTSSPP8A/wDMcHUJXP8Ay8G1yb9PRaziYPqXIP3en+CfOfp2BQluLFAX0WfMiyjLnRU9LWmw6qXqYTwXOWjsZArs2wmtcCtU8JBdLAUwyl8EyiHPQVhy4Ky6wOwJcGBY41nJLfHaK6FupFjXPaJ35TfoGMe3eh0Tlj0+RqZROiXZwRu0gtmD5OQoLbFGLD7vyIzE+rPb0IHYbj5zsqGqDRY1yi0ROKbJSvW4bGPsyC/H1yieXA1z2gp6iCryH16K+fBJC5oMDPxbwnoivmmCwyOCGzIKwNU3IXJHGRBfdslxqXJbQ0jn07GbCIW8kNdeuGFV4rlyP6pWp6b9BNuQ+0Zj4LckWWRhqMN8eDeoe0Z+/I2R1RlPhLZy6K7vjZZdNyoQa4XkOYFvXqf0nWqsSC8Nx/6Ovytz8lBi9a7oRUeEkEQk5PuQ2qVoZS7qn+dFbi2eY+4Vg3LXa/fgCyo/bs37MT+x5ROLfqegzFs3ORQ22era/JZYdunv4HEfVP1FmvCKXFs3P+S2vnpfwLRKNu3osIy9JU4q3IsZv2J0rm9lnh8IrqoFhV4FZ2b5LLCmVslvwE4jaYNfWibNhzsgT9ywuhuPyZ3PzlWnt6+AZrWCMnIUU22Z3NzHN/ALlZ0rH5eiOMhN6PnKVMRH3iI+ynq8EWVrwE4+al5Kt1s59tlZFf5aubc+DB5Zy9iv7Bdg0gXyCpZWxv3WQQrZNVWxvUv8h6sZ1QbCaMfxsucHo6kNwt2z7qCMVTj/AG+DULokIrcv9DpRqhHjQ2Yldq3CwNrukiyqx0kR/qfb2E8n5OjMS1oRCKTBeo38a2csyOPJX5UhuF6rcoVYpsURKaDcLMlF+eDXdG6tHhMwzYZ0/I01+4tO9YxXGWnEk6jjd8PlGRwM2aScX/BoMPrifpsWvbZK0/Ac4vw/YKxpkuZTFxc4PZW4VjbafGvYtmhYu+nv1L9y1zJ8eSvwEtfJNNtzSBWsWGDHjYU3sjqhpaJ4xJaA+vgKqTZFXAKrFERRBe4Wq1rgCUyLI61XWntptewtbi2qkzIfWvTpd0bYcx/yQzI+pZzlqK7UM6p1FqpqT33Lwwf6aKOqfBJ3Iq/vlvVBOKa/BHf1bM+I+4QyTexEuUePGZYYPbRrwat9OKfK6fJS35OiVJSqv4J4YxYRx/ygmjFWxuhVXXiNPwEwxnrwX1PT9+ApYHHgb2BS1YvwW3T5qL7pcJIkrxteSr61kRS7Ux8/SVJ1Tq/fLUHwVd1zeufcr6G+5sl+5yy05E+D3frRz9UittsI+4b2Hi0lkg9t+wPuF3g63D5SEpkTZ1M3WkTOY+iWmQbJIsFNGq6LlrXPku7YqS4MRhX6ka3Am5ROTyXlWz9D09UspmlJtw9/2DrM2tvvg9fkG6hiJxM5JODabfwW8WoXUeodGm3X373stcKHPczMfSGTvHab8M1WHF6RfgDqXuRYfaAK1plhTPaJabh8eDtl0YrcuEAdQ6pXV5knL8GWzepzub51H8ENah84W/VOvN+ir/ZU1Sbe5Nt/IPTHksKkjn15FZg9xSXc/CKLqfUXOWk+FwXmc9VSfwYp2eRs76W54Ld25JGmwH6Fv8GJps3M2NEtVJvjg2jRHZetsRSW5K7nz7iE6IS+LSeiqnGT8l9kLSfBR2WS2/wUyjUSo+Aqmhfgbj2J+Qmel4BdNIOxaVosKMffsDYbWvkPqnrkafQqi+oV9uLa48nnOXlucm9mw+uOrb9C865RgUWzeBzoqq0UrSCMjjY/sHqnlYN7yJti2b2biXvF9wi2dD1uJe4cpEMXySpm63D+4fGZEdN1uCarNM2X09b3RMOpGs+kr09oh5vsPj9aK6vgzHVcRtvRrpeAK+hMjjdlW1joH6QynGaqlwmeoYTWkjyfJocLI2R47Wj0jAz4fYjbJqK7V/LO+eT4jcLuycYrcmkig6r9T63Chb9myh6n12d7cVuME+PkhpgiHk8i2PGKrbnLum3Jv8hqSXgDpCJHDryXq3oli0GUMrYMsMVCdbh3WZ6x5Mwqs8mz+qJaxmeewt4OnxxDY3En6zeYmN9yrXwecYtnqN59P53p7WHcCOPosVwIuZLk4SMzOXjN+3BQ5uKocl50fqSsXbLyO6r03vXBWIsDde+564DcXL459gjJ6LJeEUuY3CXahuNK02LnoPtz0oN750YynJaeueEczM2XY9MMnAql63kudsm3sAOTk23s4P0eHJndjB2zSscIbsWxuhw9HUhmxyY0oHIf3EexbMyVTH7IEyTuM3Tth/R891WceCtbOqeganY0r0bE6pGaXPITO489xM5xfHBosTqG1yzmvj+rZ2P6hP0vZFX1KU64U9z7Y+35A82/aK3Ct7Z7Kz5DNbQ9IPrkVGNcmvJZUSOfydWwNplyFdwBVILhI5lDu7QZi3cgcoj6JcmhdH/Vc/6ZnnKsPROurux5/CPMu7/jOvxObYqmzUjT9Jze1ox/eXHTrtorudJmvQ68tNJiMpDNkl5EQ9VFDG+Vck4mw6V1JWQW/wC4x1rTFi5cq5LT4HiNb2UYv8FJm/T6m+5L8kVfUuN7LLB63Hwx4Ws9d9PuKkzM9VolCD2eqytrmjCfWcIqt6/IWjBP8iOsaA5bO7OaO6DGI6cENAOTOoYPTGgHHBCCB6OpjUxyMFcY1jmNZq0KHks8XJ1orESwkKaLyWRtEMfIzGYTGOwU8o/ByPCL/GnwZWPp0aHp1m4nPt0eOriph9CKylltiHLVqnnVwAws0y5lH0v9jNyt9bXyaEq3sj3VTX/yzzDIjqcl8s9Nxp+n90eedar7bpr5Z1+Jz7V7iF9Nt7ZaBkxRepIvfxKX606mhA9Vy7V+wiKvVVOZE7Sxt6ZIhl0uQvtC8R1ZWiVZD9mR/wDi5D49JmH3b1Gwz5Jef+lF9RZrktPwWj6XPXLKLr2K4pch9w4oDh3ZwaAcLZxHQsQhC2HoEdQ3Z1MMrHo6cTOsfpSHJjNiZusc2N2cEbouxCqavcHrXKL7Bx04iaowJVtBP3tE+Ri9sSlts02LL0VxU+/heS76VLXH4Mx0zI1NN+DU4SW217k/JHR4l1T7FxhspsZlrizOOr8W/wDi/wBjMX16m/3NPR4Ac3GW9hidRYsNxMD9TPWRJM9Mw2kmvg8t+rbP6uaOrxI7AqQ5yBoWDvuHTxAbG5/kQJ9wQvqPW5lJaB56EI4VSrmieM/B0QWSOXBkPquv07EIfIVkDghF4V1HRCCxHBCMDohCDAJHdnRDM4LZ0QYzmxHRGY6t8o0fSbRCF0MWGUtr+DM51etiESz+jEeJLlfubLo79KEIHk/F/EvMdlljMQjjroXWIwu6pNCEGJUF26Z5L9ax1lzEI6/F+I7UldrJFYIR0xE7vOCEZn//2Q==')),
                color: Colors.blue,
              ),
              height: 72,
              width: 72,
            ),
            const SizedBox(width: 14,),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Wally Bayola',
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18
                ),),
                Text('EatBulaga',
                style: TextStyle(
                  color: Colors.grey, fontSize: 14
                ),),
            ],
            )
        ],
        ),
        Container(
          color: Colors.black12,
          height: 1,
          margin: const EdgeInsets.fromLTRB(0, 22, 0, 22),
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 226, 226, 226),
              ),
              height: 40,
              width: 40,
              child: Icon(Icons.person),
            ),
            const SizedBox(width: 14,),
            const Expanded(child: Text('Personal Data')),
            const Icon(Icons.arrow_forward_ios, size: 16,color: const Color.fromARGB(255, 226, 226, 226),),
          ],
        ),

        Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 22, 0, 22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 226, 226, 226),
              ),
              height: 40,
              width: 40,
              child: Icon(Icons.settings),
            ),
            const SizedBox(width: 14,),
            const Expanded(child: Text('Settings')),
            const Icon(Icons.arrow_forward_ios, size: 16,color: const Color.fromARGB(255, 226, 226, 226),),
          ],
        ),

        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 226, 226, 226),
              ),
              height: 40,
              width: 40,
              child: Icon(Icons.description),
            ),
            const SizedBox(width: 14,),
            const Expanded(child: Text('E-Statement')),
            const Icon(Icons.arrow_forward_ios, size: 16,color: const Color.fromARGB(255, 226, 226, 226),),
          ],
        ),

        Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 22, 0, 22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 226, 226, 226),
              ),
              height: 40,
              width: 40,
              child: Icon(Icons.favorite),
            ),
            const SizedBox(width: 14,),
            const Expanded(child: Text('Referral Code')),
            const Icon(Icons.arrow_forward_ios, size: 16,color: const Color.fromARGB(255, 226, 226, 226),),
          ],
        ),

        Container(
          color: Colors.black12,
          height: 1,
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 22),
        ),

        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 226, 226, 226),
              ),
              height: 40,
              width: 40,
              child: Icon(Icons.sms),
            ),
            const SizedBox(width: 14,),
            const Expanded(child: Text('FAQs')),
            const Icon(Icons.arrow_forward_ios, size: 16,color: const Color.fromARGB(255, 226, 226, 226),),
          ],
        ),

        Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 22, 0, 22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 226, 226, 226),
              ),
              height: 40,
              width: 40,
              child: Icon(Icons.border_color),
            ),
            const SizedBox(width: 14,),
            const Expanded(child: Text('Our Handbook')),
            const Icon(Icons.arrow_forward_ios, size: 16,color: const Color.fromARGB(255, 226, 226, 226),),
          ],
        ),

        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 226, 226, 226),
              ),
              height: 40,
              width: 40,
              child: Icon(Icons.groups),
            ),
            const SizedBox(width: 14,),
            const Expanded(child: Text('Community')),
            const Icon(Icons.arrow_forward_ios, size: 16,color: const Color.fromARGB(255, 226, 226, 226),),
          ],
        ),
        
        Container(
          margin: EdgeInsets.all(22),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromARGB(255, 186, 224, 255),
          ),
          height: 90,
          width: 400,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.headset_mic, color: Colors.blue, size: 45,),
              const Text('  Feel Free to Ask, We are Ready to Help',
              style: TextStyle(
                fontSize: 14,
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ), )
            ],
          )
        ),

        Container(
          margin: EdgeInsets.all(44),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.home,
                color: Colors.blue,
                size: 40,),
              Icon(
                Icons.landscape,
                color: Colors.blue,
                size: 40,),
              Icon(
                Icons.mail,
                color: Colors.blue,
                size: 40,),
              Icon(
                Icons.person,
                color: Colors.blue,
                size: 40,),
            ],
          ),
        )


          ],
        )
      ),
      ),
    );
  }
}
