import 'package:flutter/material.dart';
import 'package:productos_app/providers/login_form_provider.dart';
import 'package:productos_app/widgets/card_container.dart';
import 'package:productos_app/widgets/fondo_login.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  //const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FondoLogin(
        child: FondoLogin(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                CardContainer(
                  child: Column(children: [
                    SizedBox(
                      height:10,),
                      Text('Login',
                        style: Theme.of(context).textTheme.headline6,),
                    SizedBox(
                      height:30,
                    ),
                    ChangeNotifierProvider(
                      create:(_) => LoginFormProvider(),
                      child: _LoginForm()
                    ),
                  ]),
                ),
                SizedBox(height: 50,),
                Text(
                  'Crear una nueva cuenta',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);
    return Container(
      child: Form(
        key: loginForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                  )
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                    width: 2,
                  )
                ),
                hintText: 'correo@gmail.com',
                labelText: 'Email : ',
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 42, 133, 244),
                ),
                prefixIcon: Icon(
                  Icons.alternate_email_sharp,
                  color: Colors.deepPurple,
                ),
              ),
              onChanged: (value) => loginForm.email = value,
              validator: ((value) {
                String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp = new RegExp(pattern);
                return regExp.hasMatch(value ?? '')
                  ? null
                  : 'El correo no es v??lido';
              }),
            ),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                  )
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 242, 97, 227),
                    width: 2,
                  )
                ),
                hintText: '********',
                labelText: 'Password : ',
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 20, 94, 185),
                ),
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Color.fromARGB(255, 241, 109, 250),
                ),
              ),
              onChanged: (value) => loginForm.password = value,
              validator: (value){
                if(value !=null && value.length >= 6){
                  return null;
                }
                return 'La contrase??a debe tener al menos 6 caracteres';
              },
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
              color: Color.fromARGB(255, 53, 137, 179),
              disabledColor: Colors.grey,
              elevation: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 80,
                  vertical: 15,
                ),
                child: Text(
                  loginForm.isLoading ? 'Espere...'
                  : 'Ingresar :D',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              onPressed: loginForm.isLoading 
              ? null
              : () async {
                FocusScope.of(context).unfocus();
                if(!loginForm.isValidForm()) return;
                loginForm.isLoading = true;
                await Future.delayed(Duration(seconds:2));
                loginForm.isLoading = false;
                Navigator.pushReplacementNamed(context, 'home');
              },
            ),
          ],
        ),
      ),
    );
  }
}