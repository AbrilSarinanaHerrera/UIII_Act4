import 'package:flutter/material.dart';

void main() {
  runApp(const MiAppFloreria());
}

class MiAppFloreria extends StatelessWidget {
  const MiAppFloreria({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floreria',
      debugShowCheckedModeBanner: false,
      home: const PaginaInicio(),
    );
  }
}

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PaginaInicio> {
  //TextController to read text entered in text field
  TextEditingController textEditingControllerEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Widget tituloform1 = Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Clientes',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget tituloform2 = Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Empleados',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget tituloform3 = Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Arreglos',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget tituloform4 = Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Ventas',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget tituloform5 = Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Sucursales',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffec6f81),
          title: const Text('Formulario Floreria'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.more_vert,
              ),
              onPressed: () {},
            )
          ],
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: const Color(0xffc81a5c)),
            tabs: const [
              Tab(
                child: Text('1'),
              ),
              Tab(
                child: Text('2'),
              ),
              Tab(
                child: Text('3'),
              ),
              Tab(
                child: Text('4'),
              ),
              Tab(
                child: Text('5'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(children: [
              tituloform3,
              const Arreglos(),
            ]),
            ListView(children: [
              tituloform4,
              const Sucursal(),
            ]),
            ListView(children: [
              tituloform1,
              const Cliente(),
            ]),
            ListView(children: [
              tituloform2,
              const Empleado(),
            ]),
            ListView(children: [
              tituloform5,
              const Ventas(),
            ]),
          ],
        ),
      ),
    );
  }
}

class Cliente extends StatefulWidget {
  const Cliente({super.key});

  @override
  ClienteState createState() {
    return ClienteState();
  }
}

class ClienteState extends State<Cliente> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                hintText: "ID",
                labelText: "Escribe tu id",
                icon: Icon(Icons.ad_units_rounded)),
            validator: (value) {
              if (value!.isEmpty) {
                return "Por favor introduce un id";
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un id valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Nombre",
                labelText: "Escribe tu nombre",
                icon: Icon(Icons.account_circle_rounded)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce un nombre valido';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Apellido",
                labelText: "Escribe tu apellido paterno",
                icon: Icon(Icons.account_circle_rounded)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce un apellido valido';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Apellido",
                labelText: "Escribe tu apellido materno",
                icon: Icon(Icons.account_circle_rounded)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce un apellido valido';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Direccion",
                labelText: "Escribe tu direccion",
                icon: Icon(Icons.location_on)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce una direccion valida';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Telefono",
                labelText: "Escribe tu numero de telefono",
                icon: Icon(Icons.call)),
            validator: (value) {
              if (value!.isEmpty) {
                return "Introduce un telefono";
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce una telefono valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Email",
                labelText: "Escribe tu email",
                icon: Icon(Icons.mail)),
            validator: (value) {
              if (value!.isEmpty) {
                return "Introduce un email";
              } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                return "Por favor introduce un email valido";
              }
              return null;
            },
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff000000),
              ),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Se estan enviando los datos')),
                  );
                }
              },
              child: const Text('Enviar'),
            ),
          ),
        ],
      ),
    );
  }
}

class Empleado extends StatefulWidget {
  const Empleado({super.key});

  @override
  EmpleadoState createState() {
    return EmpleadoState();
  }
}

class EmpleadoState extends State<Empleado> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                hintText: "ID",
                labelText: "Escribe tu id",
                icon: Icon(Icons.ad_units_rounded)),
            validator: (value) {
              if (value!.isEmpty) {
                return "Por favor introduce un id";
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un id valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Nombre",
                labelText: "Escribe tu nombre",
                icon: Icon(Icons.account_circle_rounded)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce un nombre valido';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Apellido",
                labelText: "Escribe tu apellido paterno",
                icon: Icon(Icons.account_circle_rounded)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce un apellido valido';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Apellido",
                labelText: "Escribe tu apellido materno",
                icon: Icon(Icons.account_circle_rounded)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce un apellido valido';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Direccion",
                labelText: "Escribe tu direccion",
                icon: Icon(Icons.location_on)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce una direccion valida';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Telefono",
                labelText: "Escribe tu numero de telefono",
                icon: Icon(Icons.call)),
            validator: (value) {
              if (value!.isEmpty) {
                return "Ingresa un email valido";
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un email valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Puesto",
                labelText: "Escribe tu puesto",
                icon: Icon(Icons.badge)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce un puesto valido';
              }
              return null;
            },
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff000000),
              ),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Se estan enviando los datos')),
                  );
                }
              },
              child: const Text('Enviar'),
            ),
          ),
        ],
      ),
    );
  }
}

class Arreglos extends StatefulWidget {
  const Arreglos({super.key});

  @override
  ArreglosState createState() {
    return ArreglosState();
  }
}

class ArreglosState extends State<Arreglos> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                hintText: "ID",
                labelText: "Escribe tu id",
                icon: Icon(Icons.ad_units_rounded)),
            validator: (value) {
              if (value!.isEmpty) {
                return "Por favor introduce un id";
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un id valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Flor",
                labelText: "Escribe la flor",
                icon: Icon(Icons.yard)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce una flor valido';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Acompañante",
                labelText: "Escribe el acompañante",
                icon: Icon(Icons.yard)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce un acompañante valido';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Color",
                labelText: "Escribe el color deseado",
                icon: Icon(Icons.yard)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce un color valido';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Cantidad",
                labelText: "Escribe la cantidad",
                icon: Icon(Icons.assignment_rounded)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce una cantidad validos';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Diseño",
                labelText: "Escribe el diseño",
                icon: Icon(Icons.new_label_outlined)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce un diseño valido';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Papel",
                labelText: "Escribe el papel",
                icon: Icon(Icons.ballot)),
            validator: (value) {
              if (value!.isEmpty) {
                return "Introduce un tipo de papel";
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un precio valido";
              }
              return null;
            },
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff000000),
              ),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Se estan enviando los datos')),
                  );
                }
              },
              child: const Text('Enviar'),
            ),
          ),
        ],
      ),
    );
  }
}

class Sucursal extends StatefulWidget {
  const Sucursal({super.key});

  @override
  SucursalState createState() {
    return SucursalState();
  }
}

class SucursalState extends State<Sucursal> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                hintText: "ID",
                labelText: "Escribe tu id",
                icon: Icon(Icons.ad_units_rounded)),
            validator: (value) {
              if (value!.isEmpty) {
                return "Por favor introduce un id";
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un id valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Nombre",
                labelText: "Escribe el nombre",
                icon: Icon(Icons.featured_play_list)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce un nombre valido';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Direccion",
                labelText: "Escribe la direccion",
                icon: Icon(Icons.location_on)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce una direccion valida';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Telefono",
                labelText: "Escribe el numero de telefono",
                icon: Icon(Icons.call)),
            validator: (value) {
              if (value!.isEmpty) {
                return "Introduce un telefono";
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un telefono valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Codigo Postal",
                labelText: "Escribe el codigo postal",
                icon: Icon(Icons.edit_location)),
            validator: (value) {
              if (value!.isEmpty) {
                return "Introduce un codigo postal";
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un codigo postal valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Gerente",
                labelText: "Escribe el nombre del gerente",
                icon: Icon(Icons.how_to_reg)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce un gerente valido';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ciudad",
                labelText: "Escribe la ciudad",
                icon: Icon(Icons.map_outlined)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce una ciudad valida';
              }
              return null;
            },
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff000000),
              ),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Se estan enviando los datos')),
                  );
                }
              },
              child: const Text('Enviar'),
            ),
          ),
        ],
      ),
    );
  }
}

class Ventas extends StatefulWidget {
  const Ventas({super.key});

  @override
  VentasState createState() {
    return VentasState();
  }
}

class VentasState extends State<Ventas> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                hintText: "ID",
                labelText: "Escribe tu id",
                icon: Icon(Icons.ad_units_rounded)),
            validator: (value) {
              if (value!.isEmpty) {
                return "Por favor introduce un id";
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un id valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "ID Cliente",
                labelText: "Escribe el id del cliente",
                icon: Icon(Icons.account_circle_rounded)),
            validator: (value) {
              if (value!.isEmpty) {
                return "Por favor introduce un id";
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un id valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "ID Hamburguesa",
                labelText: "Escribe el id de la hamburguesa",
                icon: Icon(Icons.lunch_dining)),
            validator: (value) {
              if (value!.isEmpty) {
                return "Por favor introduce un id";
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un id valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "ID Empleado",
                labelText: "Escribe el id del empleado",
                icon: Icon(Icons.badge)),
            validator: (value) {
              if (value!.isEmpty) {
                return "Por favor introduce un id";
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un id valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Total",
                labelText: "Escribe el total",
                icon: Icon(Icons.attach_money)),
            validator: (value) {
              if (value!.isEmpty) {
                return "Introduce el total";
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce el total valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Envio",
                labelText: "Escribe el envio",
                icon: Icon(Icons.next_week)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce un envio valido';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Fecha Venta",
                labelText: "Escribe la fecha de venta",
                icon: Icon(Icons.calendar_month)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor introduce una fecha valida';
              }
              return null;
            },
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff000000),
              ),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Se estan enviando los datos')),
                  );
                }
              },
              child: const Text('Enviar'),
            ),
          ),
        ],
      ),
    );
  }
}
