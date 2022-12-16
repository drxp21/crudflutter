import 'package:crudflutter/ajoutetudiant.dart';
import 'package:crudflutter/modifetudiant.dart';
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
      title: 'Crud Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 20, 20, 20),
                    child: Text(
                      'Gestion des etudiants',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 18, 0, 18),
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.person_add_outlined),
                      label: Text(
                        'Ajouter un etudiant',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddEtudiant()));
                      },
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(14, 10, 14, 10),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 15, 10, 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Text('Raphael Doudou DIENE'),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EditEtudiant()));
                                  },
                                  icon: Icon(Icons.edit_outlined),
                                  iconSize: 24,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title:
                                          const Text('Supprimer l\'etudiant'),
                                      content: const Text(
                                          'Vous allez supprimer cet etudiant'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Annuler'),
                                          child: const Text('Annuler'),
                                        ),
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'OK'),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  icon: Icon(Icons.delete_outline),
                                  iconSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(14, 10, 14, 10),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        elevation: 3,
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 15, 10, 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Text('Dave Sanchez'),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EditEtudiant()));
                                  },
                                  icon: Icon(Icons.edit_outlined),
                                  iconSize: 24,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title:
                                          const Text('Supprimer l\'etudiant'),
                                      content: const Text(
                                          'Vous allez supprimer cet etudiant'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Annuler'),
                                          child: const Text('Annuler'),
                                        ),
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'OK'),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  icon: Icon(Icons.delete_outline),
                                  iconSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(14, 10, 14, 10),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        elevation: 3,
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 15, 10, 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Expanded(
                                flex: 5,
                                child: Text(
                                  'Vince Carter',
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EditEtudiant()));
                                  },
                                  icon: Icon(Icons.edit_outlined),
                                  iconSize: 24,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title:
                                          const Text('Supprimer l\'etudiant'),
                                      content: const Text(
                                          'Vous allez supprimer cet etudiant'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Annuler'),
                                          child: const Text('Annuler'),
                                        ),
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'OK'),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  icon: Icon(Icons.delete_outline),
                                  iconSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(14, 10, 14, 10),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        elevation: 3,
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 15, 10, 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Text('Issa Lorenzo Diakhaté'),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EditEtudiant()));
                                  },
                                  icon: Icon(Icons.edit_outlined),
                                  iconSize: 24,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title:
                                          const Text('Supprimer l\'etudiant'),
                                      content: const Text(
                                          'Vous allez supprimer cet etudiant'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Annuler'),
                                          child: const Text('Annuler'),
                                        ),
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'OK'),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  icon: Icon(Icons.delete_outline),
                                  iconSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
