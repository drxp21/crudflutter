import 'package:flutter/material.dart';

class EditEtudiant extends StatelessWidget {
  const EditEtudiant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        automaticallyImplyLeading: false,
        title: Text('Editer', style: TextStyle(color: Colors.white)),
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                child: TextFormField(
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Nom de l\'etudiant a modifier',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: ElevatedButton(
                    child: const Text('Modifier'),
                    style: ButtonStyle(),
                    onPressed: () {},
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
