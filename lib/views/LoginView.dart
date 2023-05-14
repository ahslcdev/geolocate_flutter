import 'package:flutter/material.dart';
// import 'package:login/db/Db.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

// import '../model/UserModel.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  int _counter = 0;

  final _formKey = GlobalKey<FormState>();

  final username_input = TextEditingController();
  final password_input = TextEditingController();

  void resultado(){
    print("to aqui");
  }
  // void resultado() {
  //   setState(() {
  //     Database database = Database();
  //     var user = UserModel(
  //       username: username_input.text,
  //       password: password_input.text,
  //     );

  //     void dados() async {
  //       database.insertUser(user);
  //     }
  //     dados();
  //   });
  // }

  // @override
  // void initState() {
  // super.initState();
  // _localizacaoAtual();
  // }

  // _localizacaoAtual() async {
  //   Position position =
  //   await Geolocator.getCurrentPosition(
  //   desiredAccuracy: LocationAccuracy.high,
  //   );
  //   print('Localização: ' + position.toString());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        // backgroundColor: Colors.green,
        
      ),
      
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Container(
              margin: const EdgeInsets.all(60.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: IconButton(
                      icon: Icon(Icons.person, size: 50, color: Colors.green),
                      onPressed: () {},
                    ),
                  ),
                  // TextField(keyboardType: TextInputType.number),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: username_input,
                    decoration: InputDecoration(
                      labelText: 'Username',
                    ),
                  ),
                  TextFormField(
                    controller: password_input,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    autocorrect: false,
                    enableSuggestions: false,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, 'map/');
                        }
                      },
                      child: Text('Cadastrar'),
                    ),
                  ),
                  Center(
                      child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical:
                            20), //apply padding horizontal or vertical only
                    child: Text("Informe seus dados!",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}