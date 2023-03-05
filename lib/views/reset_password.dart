import 'package:flutter/material.dart';
import 'package:lib_management/views/login_page.dart';
import 'package:lib_management/views/widgets/mail_textfield.dart';

class Reset extends StatefulWidget {
  const Reset({super.key});

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  bool p = true;
  var openeye = Icons.remove_red_eye;
  var closeeye = Icons.visibility_off;
  var using = Icons.remove_red_eye;
  TextEditingController mail =
      new TextEditingController(text: "210701@gmail.com");
  TextEditingController password =
      new TextEditingController(text: "Changeme@123");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Center(
              child: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'REC-Library',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 50.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  MailField(controller: mail),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: password,
                    style: TextStyle(color: Colors.white),
                    obscureText: p,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.white), //<-- SEE HERE
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.white54), //<-- SEE HERE
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 4, color: Colors.white54), //<-- SEE HERE
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.white),
                      ),
                      hintText: 'Change Password',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: Colors.white,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (p == false) {
                                p = true;
                              } else {
                                p = false;
                              }
                              if (using == openeye) {
                                using = closeeye;
                              } else {
                                using = openeye;
                              }
                            });
                          },
                          icon: Icon(
                            using,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  TextFormField(
                    controller: password,
                    style: TextStyle(color: Colors.white),
                    obscureText: p,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.white), //<-- SEE HERE
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.white54), //<-- SEE HERE
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 4, color: Colors.white54), //<-- SEE HERE
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.white),
                      ),
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: Colors.white,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (p == false) {
                                p = true;
                              } else {
                                p = false;
                              }
                              if (using == openeye) {
                                using = closeeye;
                              } else {
                                using = openeye;
                              }
                            });
                          },
                          icon: Icon(
                            using,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: double.infinity,
                    height: 54.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(StadiumBorder())),
                      onPressed: () {
                        if (mail.text == '' || password.text == '') {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                              "Fill all the fields properly",
                              style: TextStyle(color: Colors.black),
                            ),
                            backgroundColor: Colors.white,
                          ));
                        }
                        Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Login()),
                              (Route<dynamic> route) => false,
                            );
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                "Logged in Successfully",
                                style: TextStyle(color: Colors.black),
                              ),
                              backgroundColor: Colors.white,
                            ));
                      },
                      child: Text(
                        'Reset Password',
                        style: TextStyle(color: Colors.black, fontSize: 25.0),
                      ),
                    ),
                  )
                ]),
          )),
        ));
  }
}
