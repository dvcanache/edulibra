import 'package:edulibra/components/mybook.dart';
import 'package:edulibra/data/bookdata.dart';
import 'package:flutter/material.dart';
import 'package:edulibra/components/newbook.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<BookData> books = [
    BookData(
        "https://i.pinimg.com/736x/c6/58/92/c658920d7855da5cd1259a22350ee7ff.jpg",
        "El cachondito",
        "Castellano",
        "https://www.spps.org/cms/lib010/MN01910242/Centricity/Domain/2595/venezuela_lenguaje2.pdf",
        "162",
        'pepino grande'),
    BookData(
        "https://guao.org/sites/default/files/biblioteca/Ciencias%20Naturales%201er%20a%C3%B1o.%20Alimentando%20con%20Ciencias.png",
        "Alimentando con Ciencias",
        "Ciencias Naturales",
        "https://guao.org/sites/default/files/biblioteca/Ciencias%20Naturales%201er%20a%C3%B1o.%20Alimentando%20con%20Ciencias.pdf",
        "131"),
    BookData(
        "https://www.guao.org/sites/default/files/biblioteca/Ciencias%20Naturales%2C%202do%20a%C3%B1o.%20El%20porvenir%20de%20la%20vida.png",
        "El Porvenir de la Vida",
        "Ciencias Naturales",
        "https://www.guao.org/sites/default/files/biblioteca/Ciencias%20Naturales%2C%202do%20a%C3%B1o.%20El%20porvenir%20de%20la%20vida.pdf",
        "131"),
    BookData(
        "https://www.guao.org/sites/default/files/biblioteca/Matem%C3%A1tica%2C%202do%20a%C3%B1o.%20Conciencia%20Matem%C3%A1tica.png",
        "Conciencia Matematica",
        "Matematica",
        "https://www.guao.org/sites/default/files/biblioteca/Matem%C3%A1tica%2C%202do%20a%C3%B1o.%20Conciencia%20Matem%C3%A1tica.pdf",
        "123"),
    BookData(
        "https://www.guao.org/sites/default/files/biblioteca/Lengua%20y%20Literatura%2C%205to%20a%C3%B1o.%20Palabra%20universal.png",
        "Palabra universal",
        "Lengua y literatura",
        "https://www.guao.org/sites/default/files/biblioteca/Lengua%20y%20Literatura%2C%205to%20a%C3%B1o.%20Palabra%20universal.pdf",
        "147"),
    BookData(
        "https://www.guao.org/sites/default/files/biblioteca/Patria%20y%20Ciudadan%C3%ADa.%20Ciencias%20Sociales%201er%20a%C3%B1o.png",
        "Patria y ciudadania",
        "Ciencias Sociales",
        "https://www.guao.org/sites/default/files/biblioteca/Patria%20y%20Ciudadan%C3%ADa.%20Ciencias%20Sociales%201er%20a%C3%B1o.pdf",
        "93"),
    BookData(
        "https://www.guao.org/sites/default/files/biblioteca/Historia%20de%20Venezuela%20y%20de%20nuestra%20Am%C3%A9rica.png",
        "Historia de Venezuela y nuestra america ",
        "Ciencias Sociales",
        "https://www.guao.org/sites/default/files/biblioteca/Historia%20de%20Venezuela%20y%20de%20nuestra%20Am%C3%A9rica.pdf",
        "178"),
    BookData(
        "https://www.guao.org/sites/default/files/biblioteca/Lengua%20y%20Literatura%2C%204to%20a%C3%B1o.%20Palabra%20creadora.png",
        "Palabra Creadora",
        "Lengua y literatura",
        "https://www.guao.org/sites/default/files/biblioteca/Lengua%20y%20Literatura%2C%204to%20a%C3%B1o.%20Palabra%20creadora.pdf",
        "147"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Creacion de la AppBar o barra superior
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 122, 147, 209),
        centerTitle: true,
        title: Text('Edulibra'),
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.menu_book_sharp)),
      ),

      //Creacion del cuerpo de la aplicacion
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Creacion de la barra de busqueda
              TextField(
                maxLength: 20,
                decoration: InputDecoration(
                    
                    filled: true,
                    fillColor: Color(0xffe6e6e6),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Buscar libro",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    )),
              ),
              Container(
                width: double.infinity,
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    myBook(books[4]),
                    myBook(books[7]),
                    myBook(books[6]),
                    myBook(books[5]),
                  ],
                ),
              ),
              Text(
                "Libros",
                style: TextStyle(

                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    newBook(books[0]),
                    newBook(books[1]),
                    newBook(books[2]),
                    newBook(books[3]),
                    newBook(books[4]),
                    newBook(books[5]),
                    newBook(books[6]),
                    newBook(books[7]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
