import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 250,

                  color: Colors.black,

                  child: Column(
                    children: [
                      const SizedBox(height: 50),

                      const Text(
                        "Mi música",

                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),

                          fontSize: 24,

                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 40),

                      _CrearOpcionMenu(context, Icons.home, "Inicio"),

                      _CrearOpcionMenu(context, Icons.search, "Buscar"),

                      _CrearOpcionMenu(
                        context,

                        Icons.library_music,

                        "Tu biblioteca",
                      ),

                      _CrearOpcionMenu(context, Icons.star, "Favoritos"),

                      _CrearOpcionMenu(context, Icons.person, "Cuenta"),

                      _CrearOpcionMenu(
                        context,

                        Icons.settings_applications,

                        "Ajustes",
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 87, 100, 98),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        const Padding(
                          padding: EdgeInsets.all(20.0),

                          child: Text(
                            "Fernando Valle Velasco",

                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),

                              fontSize: 22,

                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 3,

                            padding: const EdgeInsets.all(20),

                            children: [
                              _crearCardAlbum(context, "Cancion 1", Colors.red),

                              _crearCardAlbum(
                                context,

                                "Cancion 2",

                                Colors.blue,
                              ),

                              _crearCardAlbum(
                                context,

                                "Cancion 3",

                                Colors.green,
                              ),

                              _crearCardAlbum(
                                context,

                                "Cancion 4",

                                Colors.orange,
                              ),
                              _crearCardAlbum(
                                context,
                                "Cancion 5",
                                Colors.cyan,
                              ),
                              _crearCardAlbum(
                                context,
                                "Cancion 6",
                                Colors.pink,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _CrearOpcionMenu(BuildContext context, IconData icono, String texto) {
  return ListTile(
    leading: Icon(icono, color: const Color.fromARGB(255, 255, 255, 255)),
    title: Text(texto, style: const TextStyle(color: Colors.white)),
    onTap: () {
      print("Navegando a la seccion: $texto");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Entrando a: $texto"),
          duration: Duration(milliseconds: 1000),
          backgroundColor: Colors.green,
        ),
      );
    },
  );
}

Widget _crearCardAlbum(context, String titulo, Color colorFondo) {
  return Card(
    color: colorFondo,
    child: InkWell(
      onTap: () {
        print("Abriendo Archivo musical: $titulo");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Reproduciendo: $titulo",
              style: TextStyle(color: const Color.fromARGB(255, 134, 0, 0)),
            ),
            duration: Duration(milliseconds: 1000),
            backgroundColor: const Color.fromARGB(255, 146, 212, 255),
          ),
        );
      },
      child: Center(
        child: Text(
          titulo,
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 254, 254),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
