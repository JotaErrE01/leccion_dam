import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xml/xml.dart' as xml;

class RuizJonathanHome extends StatelessWidget {
  const RuizJonathanHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 80),
              SizedBox(
                width: 250,
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Usuario',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: 250,
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Clave',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      debugPrint("Ha presionado sobre el botón Aceptar");
                    },
                    child: const Text('Aceptar'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () async {
                      // get file xml from assets
                      // String ruiz_jonathan = await rootBundle
                      //     .loadString('assets/ruiz_jonathan.xml');

                      // get file xml from assets
                      String ruiz_jonathan = await rootBundle
                          .loadString('assets/ruiz_jonathan.xml');

                      // parse the xml
                      var document = xml.XmlDocument.parse(ruiz_jonathan);
                    },
                    child: const Text('Leer XML'),
                  ),
                ],
              ),
              // const SizedBox(height: 20),
              // create a text area for show the xml
              const SizedBox(
                width: 250,
                height: 250,
                child: TextField(
                  maxLines: 100,
                  decoration: InputDecoration(
                    labelText: 'XML',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
