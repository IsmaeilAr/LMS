import 'package:flutter/material.dart';
import 'package:ipu/layout/home_page.dart';
import 'package:ipu/shared/components/components.dart';
import 'package:ipu/shared/styles/colors.dart';
import 'package:ipu/shared/styles/styles.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formKey = GlobalKey<FormState>();
   bool _obscureText1 = true;
   String branch = 'Branch';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/blue_bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Image.asset('assets/images/logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'ITTIHAD PRIVATE UNIVERSITY',
                  style: whiteTitleStyle,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadiusDirectional.vertical(
                    top: Radius.circular(25),
                    bottom: Radius.zero, ),
                  color: white,
                ),
                child: Form(
                  key: formKey,
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8,44,8,8),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: white,
                              border: Border.all(
                                color: grey,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: const BorderRadiusDirectional.all(Radius.circular(10))
                          ),
                          child: Row(
                            children: [
                               Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(branch,
                                  style: const TextStyle(
                                    color: black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                ),
                              ),
                              PopupMenuButton(
                                icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                                   PopupMenuItem(
                                    child: ListTile(
                                      title: Text('Damascus',
                                        style: requestStyle,
                                      ),
                                      onTap: (){
                                        Navigator.pop(context, "Damascus");
                                        setState(() {
                                          branch = 'Damascus';
                                        });
                                      }
                                      ,
                                    ),
                                  ),
                                   PopupMenuItem(

                                    child: ListTile(
                                      title: Text('Aleppo',
                                        style: requestStyle,
                                      ),
                                      onTap: (){
                                        Navigator.pop(context, "Aleppo");
                                        setState(() {
                                          branch = 'Aleppo';
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: textField(
                          isPassword: false,
                          label: 'Username',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          validator: (value)
                          {
                            if(value!.isEmpty){
                              return 'Please enter password';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.visiblePassword,
                          obscureText:  _obscureText1 ,
                          onFieldSubmitted: (String value) {
                            thePassword = value;
                          },
                          decoration: InputDecoration(
                            fillColor: white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: grey,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: blue,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            labelText: 'Password',
                            labelStyle: const TextStyle(
                              color: black,
                              fontWeight: FontWeight.bold,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscureText1 = !_obscureText1;
                                });
                              },
                              icon: Icon(
                                _obscureText1 ? Icons.visibility : Icons.visibility_off,
                                color: black,
                              ),
                            ),
                            ),
                          ),
                      ),
                      Padding(
                  padding: const EdgeInsets.fromLTRB(16, 15, 16, 100),
                  child: ElevatedButton(
                      onPressed: (){
                        if (formKey.currentState!.validate()){
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => const HomePage()));
                        }
                      },
                      style:blueButtonStyle,
                      child:   Center(
                        child: Text(
                          'Login',
                          style: infoStyle,
                        ),
                      )
                  ),
                ),
                    ],
                  ),
                ) ,
              ),
            ],
          )
          ),
        ),
      ),
    );
  }
}


